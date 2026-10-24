# inductionOn₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fe0017d-8aaf-5408-1bd4-f7e4992caf2d",
  "kind": "theorem",
  "lexical_name": "inductionOn₃",
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
  "slug": "inductionon--4e72fa1dead7e831e7a9f40b",
  "source": {
    "blob": "07b4de759cb1ba0c93743d20f5b151df621dd406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/Topology/GeneralTopology/Germ/Variant94215b1c4d40015d22f5cd7a625ea20f9aa547daadd8166e118929401adc8a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e72fa1dead7e831e7a9f40b763d120f4540d0ccbb38cc0e64e60e86732db6fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Germ/Variant94215b1c4d40015d22f5cd7a625ea20f9aa547daadd8166e118929401adc8a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fe0017d-8aaf-5408-1bd4-f7e4992caf2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inductionOn₃ (f : Germ l β) (g : Germ l γ) (h : Germ l δ)
    {p : Germ l β → Germ l γ → Germ l δ → Prop}
    (H : ∀ (f : α → β) (g : α → γ) (h : α → δ), p f g h) : p f g h :=
  Quotient.inductionOn₃' f g h H
#align filter.germ.induction_on₃ Filter.Germ.inductionOn₃

/-- Given a map `F : (α → β) → (γ → δ)` that sends functions eventually equal at `l` to functions
eventually equal at `lc`, returns a map from `Germ l β` to `Germ lc δ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Germ/Variant94215b1c4d40015d22f5cd7a625ea20f9aa547daadd8166e118929401adc8a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Germ/Variant94215b1c4d40015d22f5cd7a625ea20f9aa547daadd8166e118929401adc8a36.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b4de759cb1ba0c93743d20f5b151df621dd406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
