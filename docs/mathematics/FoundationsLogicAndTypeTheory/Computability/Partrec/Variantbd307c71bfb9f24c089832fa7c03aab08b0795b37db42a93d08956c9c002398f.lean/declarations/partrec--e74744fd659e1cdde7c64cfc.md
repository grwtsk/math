# Partrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5271ea0e1787f7c09c14a7ef2621c7694e254f3e043eb65f6fe741a87a1070e5",
  "kind": "inductive",
  "lexical_name": "Partrec",
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
  "slug": "partrec--e74744fd659e1cdde7c64cfc",
  "source": {
    "blob": "7ea4baff6673f5b1dea26fee4566ac47ec4cabc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantbd307c71bfb9f24c089832fa7c03aab08b0795b37db42a93d08956c9c002398f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e74744fd659e1cdde7c64cfc42e16a5265573988aca2c87619a7c19636fc751c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantbd307c71bfb9f24c089832fa7c03aab08b0795b37db42a93d08956c9c002398f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5271ea0e1787f7c09c14a7ef2621c7694e254f3e043eb65f6fe741a87a1070e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Partrec : (ℕ →. ℕ) → Prop
  | zero : Partrec (pure 0)
  | succ : Partrec succ
  | left : Partrec ↑fun n : ℕ => n.unpair.1
  | right : Partrec ↑fun n : ℕ => n.unpair.2
  | pair {f g} : Partrec f → Partrec g → Partrec fun n => pair <$> f n <*> g n
  | comp {f g} : Partrec f → Partrec g → Partrec fun n => g n >>= f
  | prec {f g} : Partrec f → Partrec g → Partrec (unpaired fun a n =>
      n.rec (f a) fun y IH => do let i ← IH; g (pair a (pair y i)))
  | rfind {f} : Partrec f → Partrec fun a => rfind fun n => (fun m => m = 0) <$> f (pair a n)

namespace Partrec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantbd307c71bfb9f24c089832fa7c03aab08b0795b37db42a93d08956c9c002398f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantbd307c71bfb9f24c089832fa7c03aab08b0795b37db42a93d08956c9c002398f.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ea4baff6673f5b1dea26fee4566ac47ec4cabc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
