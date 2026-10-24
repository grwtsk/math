# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ExpGrowthInf.Variant33df69c76753502d1042273712bec856c62e8dff3a24c07f59c81d1685ccb90f.Monotone.expGrowthSup_comp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94da59fe-34a1-1c84-ce22-e036d334cf65",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ExpGrowthInf.Variant33df69c76753502d1042273712bec856c62e8dff3a24c07f59c81d1685ccb90f.Monotone.expGrowthSup_comp_mul",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-expgrowthinf-variant33df--5127fd60cf1528b9f4347f30",
  "source": {
    "blob": "dd5cf53041c29e332b01bfc2b89c76c8556cadd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 432,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant32ad0460a8f198aacd288ef80eeab0199eaa00a470d35cf3d9905aea2ccc7f36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5127fd60cf1528b9f4347f305f03c56facdee745ee082d72b0380015a4b1c6da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant32ad0460a8f198aacd288ef80eeab0199eaa00a470d35cf3d9905aea2ccc7f36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94da59fe-34a1-1c84-ce22-e036d334cf65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ExpGrowthInf.Variant33df69c76753502d1042273712bec856c62e8dff3a24c07f59c81d1685ccb90f.Monotone.expGrowthSup_comp_mul {m : ℕ} (h : Monotone u) (hm : m ≠ 0) :
    expGrowthSup (fun n ↦ u (m * n)) = m * expGrowthSup u :=
  (log_monotone.comp h).linearGrowthSup_comp_mul hm

end composition

end ExpGrowth
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant32ad0460a8f198aacd288ef80eeab0199eaa00a470d35cf3d9905aea2ccc7f36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant32ad0460a8f198aacd288ef80eeab0199eaa00a470d35cf3d9905aea2ccc7f36.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5cf53041c29e332b01bfc2b89c76c8556cadd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
