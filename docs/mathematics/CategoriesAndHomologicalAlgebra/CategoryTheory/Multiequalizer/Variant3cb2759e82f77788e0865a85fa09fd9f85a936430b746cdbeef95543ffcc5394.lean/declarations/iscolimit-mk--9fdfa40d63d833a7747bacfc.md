# IsColimit.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:363c8950f5b782be13639c060cc7d6430f5ad2fa16b67fdf64c1c0d7d37a6abd",
  "kind": "def",
  "lexical_name": "IsColimit.mk",
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
  "slug": "iscolimit-mk--9fdfa40d63d833a7747bacfc",
  "source": {
    "blob": "d45c557b49c2b30ad1d455900acf9eacfa974d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 895,
    "line": 875,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3cb2759e82f77788e0865a85fa09fd9f85a936430b746cdbeef95543ffcc5394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fdfa40d63d833a7747bacfc50b983e919efc576121bd2166a153ef51559ac76",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3cb2759e82f77788e0865a85fa09fd9f85a936430b746cdbeef95543ffcc5394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:363c8950f5b782be13639c060cc7d6430f5ad2fa16b67fdf64c1c0d7d37a6abd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 875–895.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsColimit.mk (desc : ∀ E : Multicofork I, K.pt ⟶ E.pt)
    (fac : ∀ (E : Multicofork I) (i : J.R), K.π i ≫ desc E = E.π i)
    (uniq : ∀ (E : Multicofork I) (m : K.pt ⟶ E.pt), (∀ i : J.R, K.π i ≫ m = E.π i) → m = desc E) :
    IsColimit K :=
  { desc
    fac := by
      rintro S (a | b)
      · rw [← K.w (WalkingMultispan.Hom.fst a), ← S.w (WalkingMultispan.Hom.fst a),
          Category.assoc]
        congr 1
        apply fac
      · apply fac
    uniq := by
      intro S m hm
      apply uniq
      intro i
      apply hm }

variable {K}

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3cb2759e82f77788e0865a85fa09fd9f85a936430b746cdbeef95543ffcc5394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant3cb2759e82f77788e0865a85fa09fd9f85a936430b746cdbeef95543ffcc5394.lean#L875).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d45c557b49c2b30ad1d455900acf9eacfa974d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
