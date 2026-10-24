# extract_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44993f0a-f074-104c-0426-62954e10c5e3",
  "kind": "theorem",
  "lexical_name": "extract_set",
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
  "slug": "extract-set--87ad6d106ccbc6363e3b97fd",
  "source": {
    "blob": "164c4684fcbec9181ba5c608d6331d628f0a2203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant4240ac215af84a32a27489194f09857419884e97ffff9f2282d30a090c7f8f1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87ad6d106ccbc6363e3b97fdc6db73796580edb957a785650418fdc9ecd40db6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant4240ac215af84a32a27489194f09857419884e97ffff9f2282d30a090c7f8f1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44993f0a-f074-104c-0426-62954e10c5e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extract_set {as : Array α} {i j k : Nat} (h : k < as.size) {a : α} :
    (as.set k a).extract i j =
      if _ : k < i then
        as.extract i j
      else if _ : k < min j as.size then
        (as.extract i j).set (k - i) a (by simp; omega)
      else as.extract i j := by
  split
  · ext l h₁ h₂
    · simp
    · simp at h₁ h₂
      simp [getElem_set]
      omega
  · split
    · ext l h₁ h₂
      · simp
      · simp only [getElem_extract, getElem_set]
        split
        · rw [if_pos]; omega
        · rw [if_neg]; omega
    · ext l h₁ h₂
      · simp
      · simp at h₁ h₂
        simp [getElem_set]
        omega

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant4240ac215af84a32a27489194f09857419884e97ffff9f2282d30a090c7f8f1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variant4240ac215af84a32a27489194f09857419884e97ffff9f2282d30a090c7f8f1c.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `164c4684fcbec9181ba5c608d6331d628f0a2203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
