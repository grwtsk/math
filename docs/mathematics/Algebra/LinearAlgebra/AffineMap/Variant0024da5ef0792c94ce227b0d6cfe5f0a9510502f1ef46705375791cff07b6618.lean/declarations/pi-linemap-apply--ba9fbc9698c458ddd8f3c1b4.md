# pi_lineMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49f6817b-3e93-bbe2-46da-1753a3b4e0e1",
  "kind": "theorem",
  "lexical_name": "pi_lineMap_apply",
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
  "slug": "pi-linemap-apply--ba9fbc9698c458ddd8f3c1b4",
  "source": {
    "blob": "b8eb55b475fd0610e2d892d9bb6a30472a3a1f85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 741,
    "line": 718,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba9fbc9698c458ddd8f3c1b434166f4cbaaa5791876adac383e4c800097048ad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49f6817b-3e93-bbe2-46da-1753a3b4e0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–741.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_lineMap_apply (f g : ∀ i, P i) (c : k) (i : ι) :
    lineMap f g c i = lineMap (f i) (g i) c :=
  (proj i : (∀ i, P i) →ᵃ[k] P i).apply_lineMap f g c
#align affine_map.pi_line_map_apply AffineMap.pi_lineMap_apply

end

end AffineMap

namespace AffineMap

variable {R k V1 P1 V2 : Type*}

section Ring

variable [Ring k] [AddCommGroup V1] [AffineSpace V1 P1] [AddCommGroup V2]

variable [Module k V1] [Module k V2]

section DistribMulAction

variable [Monoid R] [DistribMulAction R V2] [SMulCommClass k R V2]

/-- The space of affine maps to a module inherits an `R`-action from the action on its codomain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8eb55b475fd0610e2d892d9bb6a30472a3a1f85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
