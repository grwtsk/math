# power_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:298a4cbd-1660-0074-19a9-a90d696c9bb6",
  "kind": "lemma",
  "lexical_name": "power_hasDerivAt",
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
  "slug": "power-hasderivat--5c038ef0a197826ce65c1804",
  "source": {
    "blob": "743b56e22265c5c7544c87056b23c62343cc0d26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c038ef0a197826ce65c180441745c97a78478277aa04b73b78ae4ac8d081e49",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:298a4cbd-1660-0074-19a9-a90d696c9bb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma power_hasDerivAt {k : ℕ} (hk : 1 ≤ k) (s : ℂ) :
    HasDerivAt (power k) (-(Real.log (k : ℝ) : ℂ)*power k s) s := by
  have hk0 : (0 : ℝ) < (k : ℝ) := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have he : power k = fun z : ℂ => Complex.exp (-z*(Real.log (k : ℝ) : ℂ)) := by
    funext z
    simpa [power] using positive_cpow_eq_exp_realLog hk0 (-z)
  rw [he]
  have h := (Complex.hasDerivAt_exp (-s*(Real.log (k : ℝ) : ℂ))).comp s
    ((hasDerivAt_id s).neg.mul_const (Real.log (k : ℝ) : ℂ))
  convert h using 1 <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPowerC1.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743b56e22265c5c7544c87056b23c62343cc0d26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
