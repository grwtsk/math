# succRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec758bba74547b9f2408e937297ac04219dca2ee534ab3eb920cb5092e7a4952",
  "kind": "def",
  "lexical_name": "succRec",
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
  "slug": "succrec--778fa158e14c82b7ccc5ec7d",
  "source": {
    "blob": "e4d7111fb21213892e900670cb95485ae11c4224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 871,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:778fa158e14c82b7ccc5ec7d3bc2eb7386c648685f8b14f7ddc925fe5d0541a9",
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

Occurrence: `declaration:ec758bba74547b9f2408e937297ac04219dca2ee534ab3eb920cb5092e7a4952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 871–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elab_as_elim] def succRec {motive : ∀ n, Fin n → Sort _}
    (zero : ∀ n, motive n.succ (0 : Fin (n + 1)))
    (succ : ∀ n i, motive n i → motive n.succ i.succ) : ∀ {n : Nat} (i : Fin n), motive n i
  | 0, i => i.elim0
  | Nat.succ n, ⟨0, _⟩ => by rw [mk_zero]; exact zero n
  | Nat.succ _, ⟨Nat.succ i, h⟩ => succ _ _ (succRec zero succ ⟨i, Nat.lt_of_succ_lt_succ h⟩)

/--
An induction principle for `Fin` that considers a given `i : Fin n` as given by a sequence of `i`
applications of `Fin.succ`.

The cases in the induction are:
 * `zero` demonstrates the motive for `(0 : Fin (n + 1))` for all bounds `n`
 * `succ` demonstrates the motive for `Fin.succ` applied to an arbitrary `Fin` for an arbitrary
   bound `n`

Unlike `Fin.induction`, the motive quantifies over the bound, and the bound varies at each inductive
step. `Fin.succRec` is a version of this induction principle that takes the `Fin` argument last.
-/
-- FIXME: Performance review
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant0b4977e8641c2110d64f56bfa3d343a9ebcbf51d102204932e5e79802fac6794.lean#L871).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d7111fb21213892e900670cb95485ae11c4224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
