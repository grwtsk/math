# recOnMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b2b1f07bba0879026344a74c26781925fb48b86355469f5262bc547744b6f7d",
  "kind": "def",
  "lexical_name": "recOnMul",
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
  "slug": "reconmul--f3fbb96343cca6a334c0b4dc",
  "source": {
    "blob": "6ab24fac3d66239253c05c2b1f2a34504d50ee1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3fbb96343cca6a334c0b4dc9c6e7a53c65feb0b3fb3c2ec6717ec6c2396b35a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b2b1f07bba0879026344a74c26781925fb48b86355469f5262bc547744b6f7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recOnMul {P : ℕ → Sort*} (h0 : P 0) (h1 : P 1) (hp : ∀ p, Prime p → P p)
    (h : ∀ a b, P a → P b → P (a * b)) : ∀ a, P a :=
  let rec
    /-- The predicate holds on prime powers -/
    hp'' (p n : ℕ) (hp' : Prime p) : P (p ^ n) :=
    match n with
    | 0 => h1
    | n + 1 => h _ _ (hp'' p n hp') (hp p hp')
  recOnPrimeCoprime h0 hp'' fun a b _ _ _ => h a b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab24fac3d66239253c05c2b1f2a34504d50ee1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
