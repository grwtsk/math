# bijective_of_localized_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63ca1f86-0167-b282-443b-49092e531462",
  "kind": "theorem",
  "lexical_name": "bijective_of_localized_span",
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
  "slug": "bijective-of-localized-span--3370840cd67d954f44210f96",
  "source": {
    "blob": "ce0f98bd21ab78872379a3e055ffe41c6ed69368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 192,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3370840cd67d954f44210f96f5e79a785dffe3afcd3883a7c8828e898c96ca99",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63ca1f86-0167-b282-443b-49092e531462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijective_of_localized_span
    (h : ∀ r : s, Function.Bijective (map (.powers r.1) f)) :
    Function.Bijective f :=
  ⟨injective_of_localized_span _ spn _ fun r ↦ (h r).1,
  surjective_of_localized_span _ spn _ fun r ↦ (h r).2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exactness/Variant134ae95693e9c4a71f2a3f701a1bf7fc72c0ff4ed479398d2524a02383ba540e.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0f98bd21ab78872379a3e055ffe41c6ed69368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
