# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df03acb863be6cffcb2ff232523a16e2153f4c1c8dff1868f14bdd620ae2318b",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--8f00b5aed8f227648942ef3a",
  "source": {
    "blob": "5ae0a299424d0fde6c628a0b3ce9516cf092621c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 113,
    "path": "GRWTSK/Analysis/MeasureTheory/FunProp/Variant5d27637962647856978f489f3000211fd7b7dcaa0798bf224aca3bf0d90cd660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f00b5aed8f227648942ef3abcecfa6bdb5656d236c4278f116efc888487a66a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FunProp/Variant5d27637962647856978f489f3000211fd7b7dcaa0798bf224aca3bf0d90cd660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df03acb863be6cffcb2ff232523a16e2153f4c1c8dff1868f14bdd620ae2318b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : Measurable fun x : ℝ => (x * x - 1) / x + (x - x*x) := by fun_prop



/-!
So far we talked about two types of theorems:
1. theorems about basic lambda calculus terms
2. theorems about defined functions

There are two other kinds of theorems `fun_prop` can work with:
3. transition theorems - theorems that imply e.g. measurability from continuity
4. morphism theorems - theorems talking about bundles

When you mark a theorem with `@[fun_prop]` attribute you can check the type of the
theorem by turning on the option `trace.Meta.Tactic.fun_prop.attr`.
-/

/-!
Transition theorems prove one function property from another. We already mentioned
that continuity implies measurability but there are many more. For example differentiability
implies continuity, linear map between finitely dimensional spaces is continuous etc.

The theorem proving measurability from continuity is `Continuous.measurable` so let's
mark it with `@[fun_prop]`
-/

attribute [fun_prop]
  Continuous.measurable -- Continuous f → Measurable f

/-!
For this theorem to be used properly we also need to set up `Continuous` with `fun_prop`.
The bare bones setup is
-/

attribute [fun_prop]

  Continuous
  continuous_id'
  continuous_const
  Continuous.comp'
  continuous_pi
  continuous_apply
  Continuous.prodMk
  Continuous.fst
  Continuous.snd


/-!
Now we can prove one of the earlier examples assuming the function is continuous instead of
measurable.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FunProp/Variant5d27637962647856978f489f3000211fd7b7dcaa0798bf224aca3bf0d90cd660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FunProp/Variant5d27637962647856978f489f3000211fd7b7dcaa0798bf224aca3bf0d90cd660.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ae0a299424d0fde6c628a0b3ce9516cf092621c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
