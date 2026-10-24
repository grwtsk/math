# _root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.Submonoid.pow_exponent_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4e735ca-9399-1819-778e-19ed170fccf6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.Submonoid.pow_exponent_eq_one",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "root-grwtsk-algebra-grouptheory-exponentexists-varianteefa1a66bae11a275f--865e71b4a76b170f672ed7d2",
  "source": {
    "blob": "150eeadb58b5a30e718cfbe9af487892f8c50d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 410,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:865e71b4a76b170f672ed7d2595158fecc40936b9ec437225db60c6731212d8c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4e735ca-9399-1819-778e-19ed170fccf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Varianteefa1a66bae11a275f016ef6d2aad6fe4e81e0ad5a00456946d7f67898f8d60f.Submonoid.pow_exponent_eq_one {S : Submonoid G} {g : G} (g_in_s : g ∈ S) :
    g ^ (Monoid.exponent S) = 1 := by
  have := Monoid.pow_exponent_eq_one (⟨g, g_in_s⟩ : S)
  rwa [SubmonoidClass.mk_pow, ← OneMemClass.coe_eq_one] at this

end Submonoid

section LeftCancelMonoid

variable [LeftCancelMonoid G] [Finite G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150eeadb58b5a30e718cfbe9af487892f8c50d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
