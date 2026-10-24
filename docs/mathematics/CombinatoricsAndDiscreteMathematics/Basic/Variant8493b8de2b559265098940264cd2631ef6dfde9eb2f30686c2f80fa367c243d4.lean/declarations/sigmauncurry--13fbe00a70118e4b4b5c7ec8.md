# sigmaUncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79ea1079c6d7cad04de84e03f4e30259569a0334acd6871a08c022369e3b4979",
  "kind": "def",
  "lexical_name": "sigmaUncurry",
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
  "slug": "sigmauncurry--13fbe00a70118e4b4b5c7ec8",
  "source": {
    "blob": "cae9df5f62d104da0013ad733aa5c4bcdbbf2c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1551,
    "line": 1533,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13fbe00a70118e4b4b5c7ec8187d99f4dbc0ad7f1753f4a6a3927aed5d1e0b29",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79ea1079c6d7cad04de84e03f4e30259569a0334acd6871a08c022369e3b4979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1533–1551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaUncurry [∀ i j, Zero (δ i j)]
    [∀ i, DecidableEq (α i)] [∀ i j (x : δ i j), Decidable (x ≠ 0)]
    (f : Π₀ (i) (j), δ i j) :
    Π₀ i : Σi, _, δ i.1 i.2 where
  toFun i := f i.1 i.2
  support' := f.support'.map fun s => ⟨Multiset.bind s.1 fun i =>
    ((f i).support.map ⟨Sigma.mk i, sigma_mk_injective⟩).val, fun i => by
      simp_rw [Multiset.mem_bind, map_val, Multiset.mem_map, Function.Embedding.coeFn_mk, ←
        Finset.mem_def, mem_support_toFun]
      obtain hi | (hi : f i.1 = 0) := s.prop i.1
      · by_cases hi' : f i.1 i.2 = 0
        · exact Or.inr hi'
        · exact Or.inl ⟨_, hi, i.2, hi', Sigma.eta _⟩
      · right
        rw [hi, zero_apply]⟩
#align dfinsupp.sigma_uncurry DFinsupp.sigmaUncurry

/- ./././Mathport/Syntax/Translate/Expr.lean:107:6: warning: expanding binder group (i j) -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean#L1533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae9df5f62d104da0013ad733aa5c4bcdbbf2c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
