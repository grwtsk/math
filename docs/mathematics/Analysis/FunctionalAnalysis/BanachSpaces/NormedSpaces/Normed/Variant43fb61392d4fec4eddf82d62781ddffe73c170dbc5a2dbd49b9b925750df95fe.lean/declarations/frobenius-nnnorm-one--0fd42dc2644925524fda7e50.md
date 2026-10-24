# frobenius_nnnorm_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c4c03af-6703-eb07-df7b-a22bf93cb0e1",
  "kind": "theorem",
  "lexical_name": "frobenius_nnnorm_one",
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
  "slug": "frobenius-nnnorm-one--0fd42dc2644925524fda7e50",
  "source": {
    "blob": "f09f5a1cbc1368ee4e0551a8c1db554cd2b3d575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 642,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fd42dc2644925524fda7e509250749e3006e031afdd3e7e3c477a19954df029",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c4c03af-6703-eb07-df7b-a22bf93cb0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobenius_nnnorm_one [DecidableEq n] [SeminormedAddCommGroup α] [One α] :
    ‖(1 : Matrix n n α)‖₊ = .sqrt (Fintype.card n) * ‖(1 : α)‖₊ := by
  calc
    ‖(diagonal 1 : Matrix n n α)‖₊
    _ = ‖toLp 2 (Function.const _ 1)‖₊ := frobenius_nnnorm_diagonal _
    _ = .sqrt (Fintype.card n) * ‖(1 : α)‖₊ := by
      rw [PiLp.nnnorm_toLp_const (ENNReal.ofNat_ne_top (n := 2))]
      simp [NNReal.sqrt_eq_rpow]

section RCLike

variable [RCLike α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f09f5a1cbc1368ee4e0551a8c1db554cd2b3d575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
