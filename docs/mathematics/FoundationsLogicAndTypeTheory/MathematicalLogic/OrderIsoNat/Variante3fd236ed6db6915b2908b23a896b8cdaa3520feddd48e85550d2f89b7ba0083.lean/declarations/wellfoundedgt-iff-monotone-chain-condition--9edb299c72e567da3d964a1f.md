# wellFoundedGT_iff_monotone_chain_condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3df43e48-2a8a-6497-14c0-08bf17263ed8",
  "kind": "theorem",
  "lexical_name": "wellFoundedGT_iff_monotone_chain_condition",
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
  "slug": "wellfoundedgt-iff-monotone-chain-condition--9edb299c72e567da3d964a1f",
  "source": {
    "blob": "a5b9e4c9dc82a3c09aaf3651a2864bac231602ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 236,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9edb299c72e567da3d964a1f145af6413029855f6a654ff0ed81c4ee47c84b0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3df43e48-2a8a-6497-14c0-08bf17263ed8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFoundedGT_iff_monotone_chain_condition [PartialOrder α] :
    WellFoundedGT α ↔ ∀ a : ℕ →o α, ∃ n, ∀ m, n ≤ m → a n = a m :=
  wellFoundedGT_iff_monotone_chain_condition'.trans <| by
  congrm ∀ a, ∃ n, ∀ m h, ?_
  rw [lt_iff_le_and_ne]
  simp [a.mono h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variante3fd236ed6db6915b2908b23a896b8cdaa3520feddd48e85550d2f89b7ba0083.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5b9e4c9dc82a3c09aaf3651a2864bac231602ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
