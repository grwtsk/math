# finiteFeatureKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bb945fb6601fd9041eb378a055182af55aa329e38d1bdf99de93fa6a5ecc429",
  "kind": "def",
  "lexical_name": "finiteFeatureKernel",
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
  "slug": "finitefeaturekernel--f32e9202aecaa27ff11e32c6",
  "source": {
    "blob": "121cdb34f91f3983f4a0d94edd9e89379187d83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 19,
    "path": "GRWTSK/Analysis/A295bc15cf0e08b9e/Variant0bf8f94d0fc41291ed14944456eb2a0974e84805aff96be859ef06a765e7f22a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f32e9202aecaa27ff11e32c6ddf5805884bd3babd8c8756fb4fd36dba011b71f",
  "verification": {
    "reference": "docs/verification/Analysis/A295bc15cf0e08b9e/Variant0bf8f94d0fc41291ed14944456eb2a0974e84805aff96be859ef06a765e7f22a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bb945fb6601fd9041eb378a055182af55aa329e38d1bdf99de93fa6a5ecc429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteFeatureKernel
    {Feature : Type} [Fintype Feature]
    (feature : Index → Feature → ℂ) : PositiveKernel Index where
  matrix := ∑ coordinate,
    (scalarFeatureKernel (fun index => feature index coordinate)).matrix
  positiveSemidefinite := Matrix.posSemidef_sum Finset.univ fun coordinate _ =>
    (scalarFeatureKernel
      (fun index => feature index coordinate)).positiveSemidefinite

end Mathematics.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/A295bc15cf0e08b9e/Variant0bf8f94d0fc41291ed14944456eb2a0974e84805aff96be859ef06a765e7f22a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/A295bc15cf0e08b9e/Variant0bf8f94d0fc41291ed14944456eb2a0974e84805aff96be859ef06a765e7f22a.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `121cdb34f91f3983f4a0d94edd9e89379187d83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
