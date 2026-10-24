# cpop_eq_finiteSupport_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f19b586f5974b673a32672c14294fd6bac8ccc3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c64287c-edb9-8db2-a149-84873654b3a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d2e9a77-5142-7acb-e566-0a9495bed87f",
  "kind": "theorem",
  "lexical_name": "cpop_eq_finiteSupport_card",
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
  "slug": "cpop-eq-finitesupport-card--2280b2c8a8c53c08202bbf10",
  "source": {
    "blob": "f19b586f5974b673a32672c14294fd6bac8ccc3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2280b2c8a8c53c08202bbf108c685c50963134a1446e1077f981d4c092755c60",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2e9a77-5142-7acb-e566-0a9495bed87f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cpop_eq_finiteSupport_card
    {width : Nat}
    (code : FiniteIncidenceCode width) :
    code.bits.cpop.toNat = (finiteSupport code).card := by
  rw [BitVec.toNat_cpop, cpopNatRec_eq_sum_range]
  rw [← Fin.sum_univ_eq_sum_range]
  calc
    (∑ index : Fin width, (code.bits.getLsb index).toNat) =
        ∑ index : Fin width,
          if code.bits.getLsb index = true then 1 else 0 := by
            apply Finset.sum_congr rfl
            intro index _
            cases code.bits.getLsb index <;> simp
    _ = (finiteSupport code).card := by
      simp [finiteSupport, Finset.sum_boole]

/-- Finite Hamming distance is symmetric-support-difference cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f19b586f5974b673a32672c14294fd6bac8ccc3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
