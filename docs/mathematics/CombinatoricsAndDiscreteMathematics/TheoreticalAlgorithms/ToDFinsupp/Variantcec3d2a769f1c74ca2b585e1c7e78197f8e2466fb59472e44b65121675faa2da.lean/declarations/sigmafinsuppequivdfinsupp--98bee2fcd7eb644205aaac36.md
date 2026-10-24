# sigmaFinsuppEquivDFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3436f382ae5c5a98f352d2c4dae2482f01a891c29e6969d2e870e0752577cd13",
  "kind": "def",
  "lexical_name": "sigmaFinsuppEquivDFinsupp",
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
  "slug": "sigmafinsuppequivdfinsupp--98bee2fcd7eb644205aaac36",
  "source": {
    "blob": "f595fa9068c2a1bb2c68c806a123b446a6c90a10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 259,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98bee2fcd7eb644205aaac36f5af794f2c87c3191b8b687b6045abebed641bdc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3436f382ae5c5a98f352d2c4dae2482f01a891c29e6969d2e870e0752577cd13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaFinsuppEquivDFinsupp [Zero N] : ((Σ i, η i) →₀ N) ≃ Π₀ i, η i →₀ N where
  toFun f := ⟨split f, Trunc.mk ⟨(splitSupport f : Finset ι).val, fun i => by
          rw [← Finset.mem_def, mem_splitSupport_iff_nonzero]
          exact (em _).symm⟩⟩
  invFun f := by
    haveI := Classical.decEq ι
    haveI := fun i => Classical.decEq (η i →₀ N)
    refine
      onFinset (Finset.sigma f.support fun j => (f j).support) (fun ji => f ji.1 ji.2) fun g hg =>
        Finset.mem_sigma.mpr ⟨?_, mem_support_iff.mpr hg⟩
    simp only [Ne, DFinsupp.mem_support_toFun]
    intro h
    dsimp at hg
    rw [h] at hg
    simp only [coe_zero, Pi.zero_apply, not_true] at hg
  left_inv f := by ext; simp [split]
  right_inv f := by ext; simp [split]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToDFinsupp/Variantcec3d2a769f1c74ca2b585e1c7e78197f8e2466fb59472e44b65121675faa2da.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f595fa9068c2a1bb2c68c806a123b446a6c90a10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
