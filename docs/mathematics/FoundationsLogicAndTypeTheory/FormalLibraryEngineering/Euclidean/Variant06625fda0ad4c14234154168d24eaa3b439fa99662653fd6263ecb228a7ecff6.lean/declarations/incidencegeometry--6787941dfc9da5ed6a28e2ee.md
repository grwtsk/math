# IncidenceGeometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70d94eee200406bc3caf2841f812619eb611d36216078a55c58e60692fb263c9",
  "kind": "class",
  "lexical_name": "IncidenceGeometry",
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
  "slug": "incidencegeometry--6787941dfc9da5ed6a28e2ee",
  "source": {
    "blob": "64fd7924bb6502748f0e9d89d96928e1f43526ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant06625fda0ad4c14234154168d24eaa3b439fa99662653fd6263ecb228a7ecff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6787941dfc9da5ed6a28e2ee7c76152ad01d58352051490d41dfe8679c468e15",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant06625fda0ad4c14234154168d24eaa3b439fa99662653fd6263ecb228a7ecff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70d94eee200406bc3caf2841f812619eb611d36216078a55c58e60692fb263c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IncidenceGeometry where
  Point : Type u
  Line : Type u
  Circle : Type u

  between : Point → Point → Point → Prop -- implies colinearity
  onLine : Point → Line → Prop
  onCircle : Point → Circle → Prop
  inCircle : Point → Circle → Prop
  centerCircle : Point → Circle → Prop
  circlesInter : Circle → Circle → Prop

  ne_23_of_between : ∀ {a b c : Point}, between a b c → b ≠ c
  line_unique_of_pts : ∀ {a b : Point}, ∀ {L M : Line},
    a ≠ b → onLine a L → onLine b L → onLine a M → onLine b M → L = M
  onLine_2_of_between : ∀ {a b c : Point}, ∀ {L : Line},
    between a b c → onLine a L → onLine c L → onLine b L
  line_of_pts : ∀ a b, ∃ L, onLine a L ∧ onLine b L
  circle_of_ne : ∀ a b, a ≠ b → ∃ C, centerCircle a C ∧ onCircle b C
  circlesInter_of_onCircle_inCircle :
    ∀ {a b α β}, onCircle b α → onCircle a β → inCircle a α →
    inCircle b β → circlesInter α β
  pts_of_circlesInter : ∀ {α β}, circlesInter α β →
    ∃ a b, a ≠ b ∧ onCircle a α ∧ onCircle a β ∧ onCircle b α ∧ onCircle b β
  inCircle_of_centerCircle : ∀ {a α}, centerCircle a α → inCircle a α

open IncidenceGeometry

/-! # Metaprogramming utilities to break down expressions -/

/-- If `e == between a b c` return `some (a, b, c)`, otherwise `none`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant06625fda0ad4c14234154168d24eaa3b439fa99662653fd6263ecb228a7ecff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Euclidean/Variant06625fda0ad4c14234154168d24eaa3b439fa99662653fd6263ecb228a7ecff6.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64fd7924bb6502748f0e9d89d96928e1f43526ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
