# SuccOrder.ofOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:360b12a259c0c6705057dce88a2f377353c65a7515c24bd409a4340e3c49d1f0",
  "kind": "abbrev",
  "lexical_name": "SuccOrder.ofOrderIso",
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
  "slug": "succorder-oforderiso--7f6de7610b63ddc876db0bc8",
  "source": {
    "blob": "579dab7a4a7f5879e253555c02a4b61709c03f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 848,
    "line": 833,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f6de7610b63ddc876db0bc83d0b37364420faab7ef8e1c03ea5d00d8479c528",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:360b12a259c0c6705057dce88a2f377353c65a7515c24bd409a4340e3c49d1f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 833–848.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev SuccOrder.ofOrderIso [SuccOrder X] (f : X ≃o Y) : SuccOrder Y where
  succ y := f (succ (f.symm y))
  le_succ y := by rw [← map_inv_le_iff f]; exact le_succ (f.symm y)
  max_of_succ_le h := by
    rw [← f.symm.isMax_apply]
    refine max_of_succ_le ?_
    simp [f.le_symm_apply, h]
  succ_le_of_lt h := by rw [← le_map_inv_iff]; exact succ_le_of_lt (by simp [h])

end OrderIso

section OrdConnected

variable {α : Type*} [PartialOrder α] {s : Set α} [s.OrdConnected]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean#L833).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579dab7a4a7f5879e253555c02a4b61709c03f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
