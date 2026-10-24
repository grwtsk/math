# calc_norm_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13431c4c2cb9de5896e340e1415f6454c838c6a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fda7107-791a-c35f-0387-dc91fdeebda2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67434a0d-3d01-dbfe-462d-6e3d73881cbc",
  "kind": "theorem",
  "lexical_name": "calc_norm_le_one",
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
  "slug": "calc-norm-le-one--774c9598501bad5c061687af",
  "source": {
    "blob": "13431c4c2cb9de5896e340e1415f6454c838c6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 145,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:774c9598501bad5c061687af19dd3a538d5d62ae4802aad3047e5e6e9090e4f2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67434a0d-3d01-dbfe-462d-6e3d73881cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem calc_norm_le_one {n : ℕ} {z : ℤ_[p]} (hz : ih n z) :
    ‖(↑(F.eval z) : ℚ_[p]) / ↑(F.derivative.eval z)‖ ≤ 1 :=
  calc
    ‖(↑(F.eval z) : ℚ_[p]) / ↑(F.derivative.eval z)‖ =
        ‖(↑(F.eval z) : ℚ_[p])‖ / ‖(↑(F.derivative.eval z) : ℚ_[p])‖ :=
      norm_div _ _
    _ = ‖F.eval z‖ / ‖F.derivative.eval a‖ := by simp [hz.1]
    _ ≤ ‖F.derivative.eval a‖ ^ 2 * T ^ 2 ^ n / ‖F.derivative.eval a‖ := by
      gcongr
      apply hz.2
    _ = ‖F.derivative.eval a‖ * T ^ 2 ^ n := div_sq_cancel _ _
    _ ≤ 1 := mul_le_one₀ (PadicInt.norm_le_one _) (T_pow_nonneg _) (le_of_lt (T_pow' hnorm _))


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13431c4c2cb9de5896e340e1415f6454c838c6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
