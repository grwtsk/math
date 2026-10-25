# reverseInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97a294f8f6acdd65152d3b6d3c514097f7d167059d73cfde0c57a9f16fb44184",
  "kind": "def",
  "lexical_name": "reverseInduction",
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
  "slug": "reverseinduction--6e8feea6b1ec6b00264374dd",
  "source": {
    "blob": "e4d7111fb21213892e900670cb95485ae11c4224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 1010,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e8feea6b1ec6b00264374ddc5a942b3f2318f09e8cabd83d02414a8a0fbd8c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97a294f8f6acdd65152d3b6d3c514097f7d167059d73cfde0c57a9f16fb44184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1010–1018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elab_as_elim] def reverseInduction {motive : Fin (n + 1) → Sort _} (last : motive (Fin.last n))
    (cast : ∀ i : Fin n, motive i.succ → motive (castSucc i)) (i : Fin (n + 1)) : motive i :=
  let rec go (j : Nat) (h) (h2 : i ≤ j) (x : motive ⟨j, h⟩) : motive i :=
    if hi : i.1 = j then _root_.cast (by simp [← hi]) x
    else match j with
      | 0 => False.elim (by omega)
      | j + 1 => go j (by omega) (by omega) (cast ⟨j, by omega⟩ x)
  go _ _ (by omega) last

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean#L1010).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d7111fb21213892e900670cb95485ae11c4224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
