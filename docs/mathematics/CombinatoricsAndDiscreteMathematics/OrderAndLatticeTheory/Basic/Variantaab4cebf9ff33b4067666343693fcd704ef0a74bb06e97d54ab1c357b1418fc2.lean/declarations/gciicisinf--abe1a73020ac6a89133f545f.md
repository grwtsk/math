# gciIciSInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d74212847a9385614a55d2261d018d6769646d5e0dd1586f2d3545b1172c56a7",
  "kind": "def",
  "lexical_name": "gciIciSInf",
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
  "slug": "gciicisinf--abe1a73020ac6a89133f545f",
  "source": {
    "blob": "edf8c151d5756db43ad06bc75109b5f2ece8979b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 433,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantaab4cebf9ff33b4067666343693fcd704ef0a74bb06e97d54ab1c357b1418fc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abe1a73020ac6a89133f545fa9cad67418caa24495281ea30aa7a0bd5da22488",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantaab4cebf9ff33b4067666343693fcd704ef0a74bb06e97d54ab1c357b1418fc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d74212847a9385614a55d2261d018d6769646d5e0dd1586f2d3545b1172c56a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gciIciSInf [CompleteSemilatticeInf α] :
    GaloisCoinsertion (toDual ∘ Ici : α → (Set α)ᵒᵈ) (sInf ∘ ofDual : (Set α)ᵒᵈ → α) :=
  gc_Ici_sInf.toGaloisCoinsertion fun _ ↦ sInf_le le_rfl

@[deprecated (since := "2026-07-18")]
alias gci_Ici_sInf := gciIciSInf

/-- If `α` is a partial order with bottom element (e.g., `ℕ`, `ℝ≥0`), then `WithBot.unbot' ⊥` and
coercion form a Galois insertion. -/
@[to_dual giUntopDTop
/-- If `α` is a partial order with top element, then `WithTop.untop' ⊥` and
coercion form a Galois insertion. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantaab4cebf9ff33b4067666343693fcd704ef0a74bb06e97d54ab1c357b1418fc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantaab4cebf9ff33b4067666343693fcd704ef0a74bb06e97d54ab1c357b1418fc2.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf8c151d5756db43ad06bc75109b5f2ece8979b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
