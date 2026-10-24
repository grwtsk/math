# mkCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3f6f63fa6a591152ae25dc8f5e7afd914f5c2a79b7b5eec4fffa274482c775d",
  "kind": "def",
  "lexical_name": "mkCache",
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
  "slug": "mkcache--ff5f61094ab137e1e566d96d",
  "source": {
    "blob": "ed995bfa0ffc702b8d0ec8411183ad7673672d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff5f61094ab137e1e566d96d2f192d09fb564378bd4a74a15abdd2ec462b864e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3f6f63fa6a591152ae25dc8f5e7afd914f5c2a79b7b5eec4fffa274482c775d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCache {u : Level} {A : Q(Type u)} (sA : Q(CommSemiring $A)) : MetaM (Cache sA) := do return {
  field := (← trySynthInstanceQ q(Field $A)).toOption
  toCache := ← Ring.Common.mkCache sA
}

open Mathlib.Tactic.Ring hiding ExSum ExProd ExBase

section BaseType

variable {u v : Lean.Level} {R : Q(Type u)} {A : Q(Type v)} {sR : Q(CommSemiring $R)}
  {sA : Q(CommSemiring $A)} (sAlg : Q(Algebra $R $A)) (a : Q($A)) (b : Q($A))

/-- The type used to store the coefficients of the algebra tactic, which are expressions in `R`
  kept in ring normal form and mapped into `A` by the algebraMap.

  Note that these are sums, not products! -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed995bfa0ffc702b8d0ec8411183ad7673672d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
