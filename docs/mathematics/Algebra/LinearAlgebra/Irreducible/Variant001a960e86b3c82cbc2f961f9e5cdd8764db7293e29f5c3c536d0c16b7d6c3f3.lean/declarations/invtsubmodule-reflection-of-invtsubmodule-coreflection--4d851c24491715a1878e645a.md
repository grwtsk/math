# invtSubmodule_reflection_of_invtSubmodule_coreflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25d1adab-6894-9052-a529-1fd40680adbb",
  "kind": "lemma",
  "lexical_name": "invtSubmodule_reflection_of_invtSubmodule_coreflection",
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
  "slug": "invtsubmodule-reflection-of-invtsubmodule-coreflection--4d851c24491715a1878e645a",
  "source": {
    "blob": "8d8b16e25977ba4c11e5cd2217a26e8243f68dcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d851c24491715a1878e645ac9941a04e62a55a96a721fb73fd51e9a443fc15e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25d1adab-6894-9052-a529-1fd40680adbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma invtSubmodule_reflection_of_invtSubmodule_coreflection (i : ι) (q : Submodule R N)
    (hq : q ∈ invtSubmodule (P.coreflection i)) :
    q.dualAnnihilator.map P.toDualLeft.symm ∈ invtSubmodule (P.reflection i) := by
  rw [LinearEquiv.map_mem_invtSubmodule_iff, LinearEquiv.symm_symm, toDualLeft_conj_reflection,
    Module.End.mem_invtSubmodule, ← Submodule.map_le_iff_le_comap]
  exact (Submodule.dualAnnihilator_map_dualMap_le _ _).trans <| Submodule.dualAnnihilator_anti hq

/-- When the coefficients are a field, the coroot conditions for irreducibility follow from those
for the roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant001a960e86b3c82cbc2f961f9e5cdd8764db7293e29f5c3c536d0c16b7d6c3f3.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d8b16e25977ba4c11e5cd2217a26e8243f68dcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
