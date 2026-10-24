# mkProdEqQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab38a929485026968cd69ac37bb3c87cf867115b0bb96587ae1b399630e935ba",
  "kind": "def",
  "lexical_name": "mkProdEqQ",
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
  "slug": "mkprodeqq--7fdf2c94bb38f314b39e7cf5",
  "source": {
    "blob": "d2b3c437ba98d32be8c85812fc3a358a23fb9d5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bdd21d742daf40264e9b1872b040a600d1b25156e5720d03a1d8ed1b8ada17b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fdf2c94bb38f314b39e7cf5c57189b432f1ca64347618635b6a07d38626a3f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bdd21d742daf40264e9b1872b040a600d1b25156e5720d03a1d8ed1b8ada17b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab38a929485026968cd69ac37bb3c87cf867115b0bb96587ae1b399630e935ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def mkProdEqQ {u : Level} {α : Q(Type u)}
    (inst : Q(CommMonoid $α)) (n : ℕ) (f : Q(Fin $n → $α)) :
    MetaM <| (val : Q($α)) × Q(∏ i, $f i = $val) :=
  match n with
  | 0 => do return ⟨q((1 : $α)), q(Fin.prod_univ_zero $f)⟩
  | m + 1 => do
    let nezero : Q(NeZero ($m + 1)) := q(⟨Nat.succ_ne_zero _⟩)
    let val ← makeRHS (m + 1) f nezero (m + 1)
    let _ : $val =Q FinVec.prod $f := ⟨⟩
    return ⟨q($val), q(FinVec.prod_eq $f |>.symm)⟩
where
  /-- Creates the expression `f 0 * f 1 * ... * f (n - 1)`. -/
  makeRHS (n : ℕ) (f : Q(Fin $n → $α)) (nezero : Q(NeZero $n)) (k : ℕ) : MetaM Q($α) := do
  match k with
  | 0 => failure
  | 1 => pure q($f 0)
  | m + 1 =>
    let pre ← makeRHS n f nezero m
    let mRaw : Q(ℕ) := mkRawNatLit m
    pure q($pre * $f (OfNat.ofNat $mRaw))

/-- Produce a term of the form `f 0 + f 1 + ... + f (n - 1)` and an application of `FinVec.sum_eq`
that shows it is equal to `∑ i, f i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bdd21d742daf40264e9b1872b040a600d1b25156e5720d03a1d8ed1b8ada17b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bdd21d742daf40264e9b1872b040a600d1b25156e5720d03a1d8ed1b8ada17b.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b3c437ba98d32be8c85812fc3a358a23fb9d5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
