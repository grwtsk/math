# compression_factor_is_normalized_moment_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a140311b-9d23-b2dc-103c-e9e3c170a257",
  "kind": "theorem",
  "lexical_name": "compression_factor_is_normalized_moment_ratio",
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
  "slug": "compression-factor-is-normalized-moment-ratio--78959aa7bfa6f1a4fd3085ae",
  "source": {
    "blob": "c82281a63a4d43c97d7c0612daaa86ad1323118b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant15e7897465a65dd88d351de234a965a8cebbdbe62163d8debe41ff77806a38f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78959aa7bfa6f1a4fd3085ae4eb9a03fe95d147b793e00649f9994962519ac19",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant15e7897465a65dd88d351de234a965a8cebbdbe62163d8debe41ff77806a38f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a140311b-9d23-b2dc-103c-e9e3c170a257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compression_factor_is_normalized_moment_ratio {ι : Type*} {s : Finset ι}
    {w B : ι → ℝ} {p : ℝ} (hW : 0 < mass s w) (hV : 0 ≤ load s w B)
    (hE : moment s w B p ≠ 0) :
    compressionFactor s w B p =
      (load s w B / mass s w) ^ p / (moment s w B p / mass s w) := by
  rw [Real.div_rpow hV hW.le]
  unfold compressionFactor rootEnergy
  have hpow : (mass s w) ^ p = (mass s w) ^ (p - 1) * mass s w := by
    calc
      (mass s w) ^ p = (mass s w) ^ ((p - 1) + 1) := by congr 1; ring
      _ = (mass s w) ^ (p - 1) * (mass s w) ^ (1 : ℝ) := Real.rpow_add hW _ _
      _ = (mass s w) ^ (p - 1) * mass s w := by rw [Real.rpow_one]
  rw [hpow]
  have hd : (mass s w) ^ (p - 1) ≠ 0 := (Real.rpow_pos_of_pos hW _).ne'
  field_simp [hW.ne', hE, hd]

end
end GRWTSK.RiemannHypothesis.Conversation.FinitePanelCompression
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant15e7897465a65dd88d351de234a965a8cebbdbe62163d8debe41ff77806a38f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant15e7897465a65dd88d351de234a965a8cebbdbe62163d8debe41ff77806a38f2.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82281a63a4d43c97d7c0612daaa86ad1323118b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
