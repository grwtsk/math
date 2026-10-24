# tryNonCommSemiring?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2e39c0c9512fbc79ee44bb8ea4bdec32b9fea11bb5f27d79dbb76590f0d4ecf",
  "kind": "def",
  "lexical_name": "tryNonCommSemiring?",
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
  "slug": "trynoncommsemiring--052775ae9752c2f15a38bcdd",
  "source": {
    "blob": "3e30a49710605b00fc80f2a0821d41abfdcc7aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 115,
    "path": "GRWTSK/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:052775ae9752c2f15a38bcdd7642415e92b6f35a9d1b14fb17b275b316f14e2f",
  "verification": {
    "reference": "docs/verification/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2e39c0c9512fbc79ee44bb8ea4bdec32b9fea11bb5f27d79dbb76590f0d4ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryNonCommSemiring? (type : Expr) : SymM (Option Nat) := do
  let u ← getDecLevel type
  let semiring := mkApp (mkConst ``Grind.Semiring [u]) type
  let some semiringInst ← Sym.synthInstance? semiring | return none
  let id := (← getArithState).ncSemirings.size
  let semiring : Semiring := { id, type, u, semiringInst }
  modifyArithState fun s => { s with ncSemirings := s.ncSemirings.push semiring }
  return some id

/--
Classify the algebraic structure of `type`, trying the strongest first:
CommRing > Ring > CommSemiring > Semiring.
Results are cached in `Arith.State.typeClassify`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e30a49710605b00fc80f2a0821d41abfdcc7aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
