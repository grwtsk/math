# leLfDecidable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84aace37f47c6eb768e9d1fa706f56da1b5c9e141c05081a32f37971df05e60d",
  "kind": "def",
  "lexical_name": "leLfDecidable",
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
  "slug": "lelfdecidable--45bc992d2c63f4a8d8fd5cae",
  "source": {
    "blob": "18bbc42ca1dc866f62b38b1d52d595c77a9a6c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 277,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45bc992d2c63f4a8d8fd5caec0c48cda9ca86805577d965a55f5ade0e0cee089",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84aace37f47c6eb768e9d1fa706f56da1b5c9e141c05081a32f37971df05e60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leLfDecidable : ∀ (x y : PGame.{u}) [Short x] [Short y], Decidable (x ≤ y) × Decidable (x ⧏ y)
  | mk xl xr xL xR, mk yl yr yL yR, shortx, shorty => by
    constructor
    · refine' @decidable_of_iff' _ _ mk_le_mk (id _)
      apply @And.decidable _ _ ?_ ?_
      · apply @Fintype.decidableForallFintype xl _ ?_ _
        intro i
        apply (leLfDecidable _ _).2
      · apply @Fintype.decidableForallFintype yr _ ?_ _
        intro i
        apply (leLfDecidable _ _).2
    · refine' @decidable_of_iff' _ _ mk_lf_mk (id _)
      apply @Or.decidable _ _ ?_ ?_
      · apply @Fintype.decidableExistsFintype yl _ ?_ _
        intro i
        apply (leLfDecidable _ _).1
      · apply @Fintype.decidableExistsFintype xr _ ?_ _
        intro i
        apply (leLfDecidable _ _).1
-- Porting note: In Lean 3 `using_well_founded` didn't need this to be explicit.
termination_by leLfDecidable x y _ _ => Prod.mk x y
-- Porting note: `decreasing_by pgame_wf_tac` is no longer needed.
#align pgame.le_lf_decidable SetTheory.PGame.leLfDecidable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variantf8cf9396f1ae0913aaca6cf1b5afbb62445af7748abceb13ee8e57bc8b2f5be5.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18bbc42ca1dc866f62b38b1d52d595c77a9a6c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
