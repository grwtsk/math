# thetaPhiJetPolynomial7_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "884a168a6dd29126c746c49cc10c28c0f6ea80e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82e6571f-0598-e3db-7904-289dab266974",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:799013aa-7f2a-d772-4ac3-144716eb80b7",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetPolynomial7_abs_le",
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
  "slug": "thetaphijetpolynomial7-abs-le--12387c5f51a030f787b86d68",
  "source": {
    "blob": "884a168a6dd29126c746c49cc10c28c0f6ea80e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 23,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12387c5f51a030f787b86d6875b120b346da85e689c504a16970b8b3214d62e1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:799013aa-7f2a-d772-4ac3-144716eb80b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetPolynomial7_abs_le (k : Fin 7) {y : ℝ} (hy : 3 ≤ y) :
    |thetaPhiJetPolynomial7 k y| ≤
      2 * 4 ^ k.val * y ^ (k.val + 1) := by
  let x := y - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have he : y = x + 3 := by
    dsimp [x]
    ring
  rw [he]
  have hplus : 0 ≤
      2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) +
        thetaPhiJetPolynomial7 k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial7] <;> ring_nf <;>
      nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4,
        pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7]
  have hminus : 0 ≤
      2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) -
        thetaPhiJetPolynomial7 k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial7] <;> ring_nf <;>
      nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4,
        pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- One normalized source mode, indexed so m = 0 is the first theta mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `884a168a6dd29126c746c49cc10c28c0f6ea80e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
