# uniformContinuous_extension₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b82bfc1c-1925-3b10-5dc8-9a2db3f82bdd",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_extension₂",
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
  "slug": "uniformcontinuous-extension--615cc81f2878ff990026cd6f",
  "source": {
    "blob": "4a6d2bc946468c0d31f602763458da592da11e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 350,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:615cc81f2878ff990026cd6f61f1412a330666cd6f5c1c00ef28f98fe7ded6a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b82bfc1c-1925-3b10-5dc8-9a2db3f82bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_extension₂ : UniformContinuous₂ (pkg.extend₂ pkg' f) := by
  rw [uniformContinuous₂_def, AbstractCompletion.extend₂, uncurry_curry]
  apply uniformContinuous_extend

end Extension₂

section Map₂

variable (pkg' : AbstractCompletion β)

local notation "hatβ" => pkg'.space

local notation "ι'" => pkg'.coe

variable {γ : Type*} [UniformSpace γ] (pkg'' : AbstractCompletion γ)

local notation "hatγ" => pkg''.space

local notation "ι''" => pkg''.coe

local notation f " ∘₂ " g => bicompr f g

/-- Lift two variable maps to completions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant88fac4801e7636f3fcf1d1480d89fe5aea6aaa8e21546505674028e0319d30a3.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6d2bc946468c0d31f602763458da592da11e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
