# SuccOrder.ofSuccLeIff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ef9305158afc9c7ffa9ebbd2cea1f28caf27e1d74eed3bfdb0a5a6386a280ca",
  "kind": "def",
  "lexical_name": "SuccOrder.ofSuccLeIff",
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
  "slug": "succorder-ofsuccleiff--ebe2497d6e0d953a0b601348",
  "source": {
    "blob": "563edfb5af3114a069000ba20e86c0c08868533a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant81b2a2b80329e49421f5ccbe124848ee23dbf7fe8cc215e699a8bb0cfa61b1a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebe2497d6e0d953a0b601348942556c73c07a88982861f173e3c80744b00eba2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant81b2a2b80329e49421f5ccbe124848ee23dbf7fe8cc215e699a8bb0cfa61b1a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ef9305158afc9c7ffa9ebbd2cea1f28caf27e1d74eed3bfdb0a5a6386a280ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SuccOrder.ofSuccLeIff (succ : α → α) (hsucc_le_iff : ∀ {a b}, succ a ≤ b ↔ a < b) :
    SuccOrder α :=
  { succ
    le_succ := fun _ => (hsucc_le_iff.1 le_rfl).le
    max_of_succ_le := fun ha => (lt_irrefl _ <| hsucc_le_iff.1 ha).elim
    succ_le_of_lt := fun h => hsucc_le_iff.2 h
    le_of_lt_succ := fun {_ _} h => le_of_not_lt ((not_congr hsucc_le_iff).1 h.not_le) }
#align succ_order.of_succ_le_iff SuccOrder.ofSuccLeIff

/-- A constructor for `PredOrder α` usable when `α` is a linear order with no minimal element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant81b2a2b80329e49421f5ccbe124848ee23dbf7fe8cc215e699a8bb0cfa61b1a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant81b2a2b80329e49421f5ccbe124848ee23dbf7fe8cc215e699a8bb0cfa61b1a7.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563edfb5af3114a069000ba20e86c0c08868533a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
