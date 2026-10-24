# isLittleO_one_of_lt_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a1b5e5b-3424-0057-28e7-15fb75b7e16b",
  "kind": "theorem",
  "lexical_name": "isLittleO_one_of_lt_radius",
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
  "slug": "islittleo-one-of-lt-radius--9ed63802c6f949cd0ff54c8d",
  "source": {
    "blob": "13432c418571c74bea4a2a728d91dc64f4f6bdf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 191,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variant54fd395dab0e743a2273317d71baaed300af30fc2f9401a9bd196a9fff3bad26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ed63802c6f949cd0ff54c8d843e842159becc668edd751d31e4f3294e5b9d5c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variant54fd395dab0e743a2273317d71baaed300af30fc2f9401a9bd196a9fff3bad26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a1b5e5b-3424-0057-28e7-15fb75b7e16b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_one_of_lt_radius (h : ↑r < p.radius) :
    (fun n => ‖p n‖ * (r : ℝ) ^ n) =o[atTop] (fun _ => 1 : ℕ → ℝ) :=
  let ⟨_, ha, hp⟩ := p.isLittleO_of_lt_radius h
  hp.trans <| (isLittleO_pow_pow_of_lt_left ha.1.le ha.2).congr (fun _ => rfl) one_pow

/-- For `r` strictly smaller than the radius of `p`, then `‖pₙ‖ rⁿ` tends to zero exponentially:
for some `0 < a < 1` and `C > 0`, `‖p n‖ * r ^ n ≤ C * a ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variant54fd395dab0e743a2273317d71baaed300af30fc2f9401a9bd196a9fff3bad26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConvergenceRadius/Variant54fd395dab0e743a2273317d71baaed300af30fc2f9401a9bd196a9fff3bad26.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13432c418571c74bea4a2a728d91dc64f4f6bdf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
