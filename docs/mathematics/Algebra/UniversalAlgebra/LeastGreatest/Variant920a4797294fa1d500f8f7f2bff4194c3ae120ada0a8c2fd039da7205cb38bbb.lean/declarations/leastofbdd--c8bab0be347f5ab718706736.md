# leastOfBdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b44daa80195db0dcf4afbeb5c8702b06c5f96b28a6c1c8cfee8077289712525a",
  "kind": "def",
  "lexical_name": "leastOfBdd",
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
  "slug": "leastofbdd--c8bab0be347f5ab718706736",
  "source": {
    "blob": "5c3e42e3fb5ae3dfd06e7d8c22ea2485016bd7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8bab0be347f5ab718706736b6ee060a18c248f18414ced8305e0e8942e9871c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b44daa80195db0dcf4afbeb5c8702b06c5f96b28a6c1c8cfee8077289712525a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leastOfBdd {P : ℤ → Prop} [DecidablePred P] (b : ℤ) (Hb : ∀ z : ℤ, P z → b ≤ z)
    (Hinh : ∃ z : ℤ, P z) : { lb : ℤ // P lb ∧ ∀ z : ℤ, P z → lb ≤ z } :=
  have EX : ∃ n : ℕ, P (b + n) :=
    let ⟨elt, Helt⟩ := Hinh
    match elt, le.dest (Hb _ Helt), Helt with
    | _, ⟨n, rfl⟩, Hn => ⟨n, Hn⟩
  ⟨b + (Nat.find EX : ℤ), Nat.find_spec EX, fun z h =>
    match z, le.dest (Hb _ h), h with
    | _, ⟨_, rfl⟩, h => add_le_add_left (Int.ofNat_le.2 <| Nat.find_min' _ h) _⟩

/-- `Int.leastOfBdd` is the least integer satisfying a predicate which is false for all `z : ℤ` with
`z < b` for some fixed `b : ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c3e42e3fb5ae3dfd06e7d8c22ea2485016bd7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
