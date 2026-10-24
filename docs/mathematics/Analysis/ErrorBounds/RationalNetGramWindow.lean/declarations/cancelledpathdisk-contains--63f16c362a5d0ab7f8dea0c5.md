# cancelledPathDisk_contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84d9a3c9-d9fd-2636-bcf3-15061f6c816c",
  "kind": "theorem",
  "lexical_name": "cancelledPathDisk_contains",
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
  "slug": "cancelledpathdisk-contains--63f16c362a5d0ab7f8dea0c5",
  "source": {
    "blob": "c8870dc4933603c71b20c05ccb6a6235f0017f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 114,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalNetGramWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63f16c362a5d0ab7f8dea0c59756a1dd6678eceafd7a9cc13b526e321dd9e964",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalNetGramWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84d9a3c9-d9fd-2636-bcf3-15061f6c816c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancelledPathDisk_contains (gainDisk : τ → ι → Disk)
    (sourceDisk modelDisk : ι × ι → Disk) (nextSourceDisk nextModelDisk : τ × τ → Disk)
    (gain : τ → ι → ℂ) (source model : ι × ι → ℂ) (nextSource nextModel : τ × τ → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (sourceEnclosure : ∀ p, Contains (sourceDisk p) (source p))
    (modelEnclosure : ∀ p, Contains (modelDisk p) (model p))
    (nextSourceEnclosure : ∀ p, Contains (nextSourceDisk p) (nextSource p))
    (nextModelEnclosure : ∀ p, Contains (nextModelDisk p) (nextModel p)) (p : τ × τ) :
    Contains (cancelledPathDisk gainDisk sourceDisk modelDisk nextSourceDisk nextModelDisk p)
      (netResidual gain (fun q => source q - model q) (fun q => nextSource q - nextModel q) p) := by
  rw [netResidual_eq_path_difference]
  exact contains_sub
    (contains_sub (nextSourceEnclosure p)
      (transportDisk_contains gainDisk sourceDisk gain source gainEnclosure sourceEnclosure p))
    (contains_sub (nextModelEnclosure p)
      (transportDisk_contains gainDisk modelDisk gain model gainEnclosure modelEnclosure p))

/-- Independently supplied residual enclosures may preserve correlations unavailable in separate disks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalNetGramWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalNetGramWindow.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8870dc4933603c71b20c05ccb6a6235f0017f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
