# compression_factor_is_normalized_moment_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07a83864-a033-c5b9-b2fd-211911a4ee54",
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
  "slug": "compression-factor-is-normalized-moment-ratio--4d456023d0b665960fee2d27",
  "source": {
    "blob": "a13ea631d725445b54df42e1114c44c9a39a21eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant53f3bf738634348336a3acc2833bb5f00715325177fc18060cc41e0a5d586679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d456023d0b665960fee2d27116b3d3f8e17172ef0e1386782eb71f29915bbc6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant53f3bf738634348336a3acc2833bb5f00715325177fc18060cc41e0a5d586679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07a83864-a033-c5b9-b2fd-211911a4ee54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–92.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant53f3bf738634348336a3acc2833bb5f00715325177fc18060cc41e0a5d586679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant53f3bf738634348336a3acc2833bb5f00715325177fc18060cc41e0a5d586679.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a13ea631d725445b54df42e1114c44c9a39a21eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
