# cellTail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e19bfc9-1c04-51e2-f34e-72076f510b08",
  "kind": "theorem",
  "lexical_name": "cellTail_le",
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
  "slug": "celltail-le--6890d5540fe6ac98a10f7d47",
  "source": {
    "blob": "3245184956f5293ca79f2b79112b3a7ac39dfb2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6890d5540fe6ac98a10f7d47b298d7a849dd377a03b789ae057e5b7b81c391bf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e19bfc9-1c04-51e2-f34e-72076f510b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellTail_le (N : ℕ) (hN : 3 ≤ N) :
    cellTail N ≤ (Real.log (N+1)+1)/(N+1) := by
  have ha := (firstStieltjesConstant_enclosure (N+1) (by omega)).1
  have hg := harmonic_error_upper (show 0 < N+1 by omega)
  rw [cellTail_exact]
  push_cast at ha hg ⊢
  calc
    _ ≤ Real.log ((N:ℝ)+1)/((N:ℝ)+1)+1/((N:ℝ)+1) := by linarith
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTail/Variant47af5440b3509d0d09e6d149992779a56c052d5e91764d3b49803518382d23f4.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3245184956f5293ca79f2b79112b3a7ac39dfb2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
