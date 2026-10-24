# probe_floor_retains_previous_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:054071d6-8d04-4712-2152-2592b691dea1",
  "kind": "theorem",
  "lexical_name": "probe_floor_retains_previous_inventory",
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
  "slug": "probe-floor-retains-previous-inventory--9eaa69d34a420e1646771dfd",
  "source": {
    "blob": "320aeca2c5d965e7786fdd8b16bca1b20c40337c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variantb5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eaa69d34a420e1646771dfdedc73c420aae44adedbcf77e7c176ef400693158",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variantb5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:054071d6-8d04-4712-2152-2592b691dea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probe_floor_retains_previous_inventory {p : ℕ} (hp : 2 ≤ p) (n : ℕ) :
    ⌊(birthProbe p n : ℝ)⌋₊ = p - 1 := by
  have h := probe_in_preceding_cell p n
  have he : ((p - 1 : ℕ) : ℝ) = (p : ℝ) - 1 := by
    rw [Nat.cast_sub (by omega : 1 ≤ p), Nat.cast_one]
  have hq : 0 ≤ (birthProbe p n : ℝ) := by
    have hp0 := Nat.cast_nonneg (α := ℝ) (p - 1)
    rw [he] at hp0
    linarith
  apply (Nat.floor_eq_iff hq).mpr
  rw [he]
  constructor <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variantb5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GeneralPrimeBirthLedger/Variantb5bab76c806f7ef978fbd7986d7439e51a61600ee3f54f4e81d85ef619bf9e4f.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `320aeca2c5d965e7786fdd8b16bca1b20c40337c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
