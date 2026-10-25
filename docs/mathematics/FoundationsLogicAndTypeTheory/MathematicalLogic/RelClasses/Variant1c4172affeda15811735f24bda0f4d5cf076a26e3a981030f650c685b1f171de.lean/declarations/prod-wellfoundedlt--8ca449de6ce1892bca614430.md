# Prod.wellFoundedLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db1ae7f3451e849d3746d6eeb4e4b67521b8d954742c81b9fe07003ec677c37a",
  "kind": "instance",
  "lexical_name": "Prod.wellFoundedLT",
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
  "slug": "prod-wellfoundedlt--8ca449de6ce1892bca614430",
  "source": {
    "blob": "fc8358bb33e92d395df90eade464314e4d437778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 521,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variant1c4172affeda15811735f24bda0f4d5cf076a26e3a981030f650c685b1f171de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ca449de6ce1892bca614430afef1de60448dfff9a1d51cabb28bc1695fa7460",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variant1c4172affeda15811735f24bda0f4d5cf076a26e3a981030f650c685b1f171de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db1ae7f3451e849d3746d6eeb4e4b67521b8d954742c81b9fe07003ec677c37a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.wellFoundedLT [PartialOrder α] [WellFoundedLT α] [Preorder β] [WellFoundedLT β] :
    WellFoundedLT (α × β) where
  wf := by
    refine @Subrelation.wf (α × β) (Prod.Lex (· < ·) (· < ·)) (· < ·) ?_ IsWellFounded.wf
    rintro ⟨a₁, b₁⟩ ⟨a₂, b₂⟩ w
    simp only [Prod.mk_lt_mk] at w
    rcases eq_or_ne a₁ a₂ with rfl | ha
    · right
      simpa using w
    · left
      rcases w with ⟨a_lt, _⟩ | ⟨a_le, _⟩
      · assumption
      · exact Ne.lt_of_le ha a_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variant1c4172affeda15811735f24bda0f4d5cf076a26e3a981030f650c685b1f171de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variant1c4172affeda15811735f24bda0f4d5cf076a26e3a981030f650c685b1f171de.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8358bb33e92d395df90eade464314e4d437778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
