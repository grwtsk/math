# iSup_le_iSup_of_partialSups_le_partialSups

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6238d60a-4091-68b3-0798-e150031603e1",
  "kind": "theorem",
  "lexical_name": "iSup_le_iSup_of_partialSups_le_partialSups",
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
  "slug": "isup-le-isup-of-partialsups-le-partialsups--5e5b62cd80a63ebcce9795a2",
  "source": {
    "blob": "8e7a0e55ee431198a67930ee6876ffa04f9a95f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 190,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e5b62cd80a63ebcce9795a29ebf618bf7837d28305e4dccf296d680e4e57286",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6238d60a-4091-68b3-0798-e150031603e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_le_iSup_of_partialSups_le_partialSups {f g : ℕ → α}
    (h : partialSups f ≤ partialSups g) : ⨆ n, f n ≤ ⨆ n, g n := by
  rw [← iSup_partialSups_eq f, ← iSup_partialSups_eq g]
  exact iSup_mono h
#align supr_le_supr_of_partial_sups_le_partial_sups iSup_le_iSup_of_partialSups_le_partialSups

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e7a0e55ee431198a67930ee6876ffa04f9a95f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
