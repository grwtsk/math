# PredOrder.ofCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38567370c167e6fe6dea4cfdaf1870e524a04920515a0a3e55e34f882449a980",
  "kind": "def",
  "lexical_name": "PredOrder.ofCore",
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
  "slug": "predorder-ofcore--36f4973fdeb6dabca5a265f5",
  "source": {
    "blob": "6e5ba067c2ed0a76204be5b800d98975bce5ce2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 170,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36f4973fdeb6dabca5a265f5e780a14fc0d6c485da03c39b6758859e761ced3b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38567370c167e6fe6dea4cfdaf1870e524a04920515a0a3e55e34f882449a980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PredOrder.ofCore {α} [LinearOrder α] (pred : α → α)
    (hn : ∀ {a}, ¬IsMin a → ∀ b, b ≤ pred a ↔ b < a) (hm : ∀ a, IsMin a → pred a = a) :
    PredOrder α :=
  { pred
    le_pred_of_lt := fun {a b} =>
      by_cases (fun h hab => (hm b h).symm ▸ hab.le) fun h => (hn h a).mpr
    pred_le := fun a =>
      by_cases (fun h => (hm a h).le) fun h => le_of_lt <| by simpa using (hn h a).not
    le_of_pred_lt := fun {a b} hab =>
      by_cases (fun h => hm a h ▸ hab.le) fun h => by simpa [hab] using (hn h b).not
    min_of_le_pred := fun {a} => not_imp_not.mp fun h => by simpa using (hn h a).not }
#align pred_order.of_core PredOrder.ofCore
#align pred_order.of_core_pred PredOrder.ofCore_pred

/-- A constructor for `SuccOrder α` usable when `α` is a linear order with no maximal element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5ba067c2ed0a76204be5b800d98975bce5ce2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
