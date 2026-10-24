# collectScalarRingsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bcb8f06e5cd985cfd2c966d7ffc4dde712cf8d4084249e457a71196076a863b",
  "kind": "def",
  "lexical_name": "collectScalarRingsAux",
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
  "slug": "collectscalarringsaux--9b4b60a6fd7362bf09d2e38f",
  "source": {
    "blob": "ed995bfa0ffc702b8d0ec8411183ad7673672d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 323,
    "path": "GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b4b60a6fd7362bf09d2e38f86de894164e6e41d425c90c4f64123728bc088fe",
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

Occurrence: `declaration:6bcb8f06e5cd985cfd2c966d7ffc4dde712cf8d4084249e457a71196076a863b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectScalarRingsAux (e : Expr) : StateT (List Expr) MetaM Unit  := do
  match_expr e with
  | SMul.smul R _ _ _ a =>
    modify fun l ↦ R :: l
    collectScalarRingsAux a
  | DFunLike.coe _ _R _A _inst φ _ =>
      match_expr φ with
      | algebraMap R _ _ _ _ =>
        modify fun l ↦ R :: l
      | _ => return
  | HSMul.hSMul R _ _ _ _ a =>
    modify fun l ↦ R :: l
    collectScalarRingsAux a
  | Eq _ a b => collectScalarRingsAux a; collectScalarRingsAux b
  | HAdd.hAdd _ _ _ _ a b => collectScalarRingsAux a; collectScalarRingsAux b
  | Add.add _ _ _ a b => collectScalarRingsAux a; collectScalarRingsAux b
  | HMul.hMul _ _ _ _ a b => collectScalarRingsAux a; collectScalarRingsAux b
  | Mul.mul _ _ _ a b => collectScalarRingsAux a; collectScalarRingsAux b
  | HSub.hSub _ _ _ _ a b => collectScalarRingsAux a; collectScalarRingsAux b
  | Sub.sub _ _ _ a b => collectScalarRingsAux a; collectScalarRingsAux b
  | HPow.hPow _ _ _ _ a _ => collectScalarRingsAux a
  | Neg.neg _ _ a => collectScalarRingsAux a
  | _ => return

/-- Collect all scalar rings from scalar multiplications and `algebraMap` applications in the
expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf921be0d7249586683cf8a5478e9137911355ba8d41cfbaaf765ba3b077395fc.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed995bfa0ffc702b8d0ec8411183ad7673672d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
