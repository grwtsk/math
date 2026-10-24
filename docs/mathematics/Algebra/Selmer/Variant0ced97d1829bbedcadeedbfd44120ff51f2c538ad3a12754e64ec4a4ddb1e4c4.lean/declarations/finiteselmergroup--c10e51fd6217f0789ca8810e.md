# FiniteSelmerGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7df24f3605f036597982672cec2c42fb087b9163060a6c103c7693edb7aa00ae",
  "kind": "def",
  "lexical_name": "FiniteSelmerGroup",
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
  "slug": "finiteselmergroup--c10e51fd6217f0789ca8810e",
  "source": {
    "blob": "e4d0ee759ef29257c1b1937738615baecf13a254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 97,
    "path": "GRWTSK/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c10e51fd6217f0789ca8810ec3ed080c45fe79b75726751ce5ac10e167cfd5ef",
  "verification": {
    "reference": "docs/verification/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7df24f3605f036597982672cec2c42fb087b9163060a6c103c7693edb7aa00ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteSelmerGroup
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρG : AdditiveAction G A}
    (V : Type w)
    (Gv : V → FiniteGroupData.{u})
    (ρv : (v : V) → AdditiveAction (Gv v) A)
    (ιv : (v : V) → ActionHom (ρv v) ρG)
    (Lv :
      (v : V) →
        FiniteSubgroup (FiniteH1.additiveStructure (Gv v) A (ρv v))) :
    FiniteSubgroup (FiniteH1.additiveStructure G A ρG) where
  carrier := fun c =>
    ∀ v : V,
      (Lv v).carrier (resFiniteH1 (ιv v) c)
  zero_mem := by
    intro v
    change (Lv v).carrier (resFiniteH1 (ιv v) (FiniteH1.zero G A ρG))
    rw [resFiniteH1_zero]
    exact (Lv v).zero_mem
  add_mem := by
    intro x y hx hy v
    change (Lv v).carrier (resFiniteH1 (ιv v) (FiniteH1.add x y))
    rw [resFiniteH1_add]
    exact (Lv v).add_mem (hx v) (hy v)
  neg_mem := by
    intro x hx v
    change (Lv v).carrier (resFiniteH1 (ιv v) (FiniteH1.neg x))
    rw [resFiniteH1_neg]
    exact (Lv v).neg_mem (hx v)

/-- The top local condition at every place gives the whole global `FiniteH1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Selmer/Variant0ced97d1829bbedcadeedbfd44120ff51f2c538ad3a12754e64ec4a4ddb1e4c4.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d0ee759ef29257c1b1937738615baecf13a254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
