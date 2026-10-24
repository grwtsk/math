# ofClosureMEqTopLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a85e0218401c635fc532c7e4f670944f1654c4652fde76c470e7ca67a41a8081",
  "kind": "def",
  "lexical_name": "ofClosureMEqTopLeft",
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
  "slug": "ofclosuremeqtopleft--a01a8a2ce73a9c5b300a01ce",
  "source": {
    "blob": "791a0ae9747156a8638d926ec5461217d4f3b327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 666,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a01a8a2ce73a9c5b300a01ce4b9b1e9f8c306d8551f9b54399dbb91469565f1a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a85e0218401c635fc532c7e4f670944f1654c4652fde76c470e7ca67a41a8081`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofClosureMEqTopLeft {M N} [Monoid M] [Monoid N] {s : Set M} (f : M → N) (hs : closure s = ⊤)
    (h1 : f 1 = 1) (hmul : ∀ x ∈ s, ∀ (y), f (x * y) = f x * f y) :
    M →* N where
  toFun := f
  map_one' := h1
  map_mul' x :=
    (dense_induction (p := _) x hs hmul fun y => by rw [one_mul, h1, one_mul]) fun a b ha hb y => by
      rw [mul_assoc, ha, ha, hb, mul_assoc]
#align monoid_hom.of_mclosure_eq_top_left MonoidHom.ofClosureMEqTopLeft
#align add_monoid_hom.of_mclosure_eq_top_left AddMonoidHom.ofClosureMEqTopLeft

@[to_additive (attr := simp, norm_cast)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `791a0ae9747156a8638d926ec5461217d4f3b327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
