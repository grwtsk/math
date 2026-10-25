# neTopBotEquivReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:379f5d013af7ec038d5e905f536f5e8dcad014408421b3dca43e4cb95539c619",
  "kind": "def",
  "lexical_name": "neTopBotEquivReal",
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
  "slug": "netopbotequivreal--517961e6def52b1ac7a26b71",
  "source": {
    "blob": "22162629622a034cab326979ca4012e9d717b37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 630,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:517961e6def52b1ac7a26b71b72459bf589eb8d8592df46011b2332f52be3bfe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:379f5d013af7ec038d5e905f536f5e8dcad014408421b3dca43e4cb95539c619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def neTopBotEquivReal : ({⊥, ⊤}ᶜ : Set EReal) ≃ ℝ where
  toFun x := EReal.toReal x
  invFun x := ⟨x, by simp⟩
  left_inv := fun ⟨x, hx⟩ => by
    lift x to ℝ
    · simpa [not_or, and_comm] using hx
    · simp
  right_inv x := by simp
#align ereal.ne_top_bot_equiv_real EReal.neTopBotEquivReal

/-! ### Addition -/

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22162629622a034cab326979ca4012e9d717b37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
