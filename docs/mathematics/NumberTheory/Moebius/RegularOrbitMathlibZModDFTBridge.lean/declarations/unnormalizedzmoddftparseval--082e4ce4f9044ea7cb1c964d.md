# UnnormalizedZModDFTParseval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2289e7e0165ae7d71cdd3c09d5ddda143bcebbb059601399ddc42c35536785fc",
  "kind": "def",
  "lexical_name": "UnnormalizedZModDFTParseval",
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
  "slug": "unnormalizedzmoddftparseval--082e4ce4f9044ea7cb1c964d",
  "source": {
    "blob": "e42848d7b1ca5307566d7e4b5ce87cba209c4c52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:082e4ce4f9044ea7cb1c964db11b928836e2950866b548c7f52bc6ef2d4116ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2289e7e0165ae7d71cdd3c09d5ddda143bcebbb059601399ddc42c35536785fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UnnormalizedZModDFTParseval : Prop :=
  ∀ d : ℕ, ∀ _hd : NeZero d,
    ∀ C : ZMod (d * d) → ℂ,
      (∑ k : ZMod (d * d), ‖ZMod.dft C k‖ ^ 2) =
        ((d * d : ℕ) : ℝ) *
          (∑ s : ZMod (d * d), ‖C s‖ ^ 2)

/-- The repository Parseval proposition is exactly equivalent to the
unnormalized Mathlib-DFT Parseval proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitMathlibZModDFTBridge.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42848d7b1ca5307566d7e4b5ce87cba209c4c52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
