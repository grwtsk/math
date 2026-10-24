# monoEquivOfFin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:873f04ce3f1b485e9bb8f8603bd476f16a5a32181de75faae27771096679610d",
  "kind": "def",
  "lexical_name": "monoEquivOfFin",
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
  "slug": "monoequivoffin--bf7759cb3c38c11fea4a14ba",
  "source": {
    "blob": "5f813450ed9d635407ddfa5953208d8140569f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantbda8cee25b3b8f839c27ac021cb96c84b2cb7a156b54f877523105dd0612a6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf7759cb3c38c11fea4a14ba60d90a66ffe1c33466a83225cc21faa611598ae1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sort/Variantbda8cee25b3b8f839c27ac021cb96c84b2cb7a156b54f877523105dd0612a6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:873f04ce3f1b485e9bb8f8603bd476f16a5a32181de75faae27771096679610d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monoEquivOfFin (α : Type*) [Fintype α] [LinearOrder α] {k : ℕ} (h : Fintype.card α = k) :
    Fin k ≃o α :=
  (univ.orderIsoOfFin h).trans <| (Set.orderIsoOfEq _ _ coe_univ).trans OrderIso.Set.univ

variable {α : Type*} [DecidableEq α] [Fintype α] [LinearOrder α] {m n : ℕ} {s : Finset α}

/-- If `α` is a linearly ordered fintype, `s : Finset α` has cardinality `m` and its complement has
cardinality `n`, then `Fin m ⊕ Fin n ≃ α`. The equivalence sends elements of `Fin m` to
elements of `s` and elements of `Fin n` to elements of `sᶜ` while preserving order on each
"half" of `Fin m ⊕ Fin n` (using `Set.orderIsoOfFin`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sort/Variantbda8cee25b3b8f839c27ac021cb96c84b2cb7a156b54f877523105dd0612a6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variantbda8cee25b3b8f839c27ac021cb96c84b2cb7a156b54f877523105dd0612a6bd.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f813450ed9d635407ddfa5953208d8140569f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
