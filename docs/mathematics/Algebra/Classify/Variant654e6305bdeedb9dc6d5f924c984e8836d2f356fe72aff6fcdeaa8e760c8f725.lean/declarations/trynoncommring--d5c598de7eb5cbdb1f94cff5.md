# tryNonCommRing?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e29f3e8defa743d9aacd7d09c6f2445740bdd5b67c0c63ff20a877c69e68cf8",
  "kind": "def",
  "lexical_name": "tryNonCommRing?",
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
  "slug": "trynoncommring--d5c598de7eb5cbdb1f94cff5",
  "source": {
    "blob": "3e30a49710605b00fc80f2a0821d41abfdcc7aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5c598de7eb5cbdb1f94cff58d42fdc1a7024133a2326dc47809609b6296212d",
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

Occurrence: `declaration:1e29f3e8defa743d9aacd7d09c6f2445740bdd5b67c0c63ff20a877c69e68cf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryNonCommRing? (type : Expr) : SymM (Option Nat) := do
  let u ← getDecLevel type
  let ring := mkApp (mkConst ``Grind.Ring [u]) type
  let some ringInst ← Sym.synthInstance? ring | return none
  let semiringInst := mkApp2 (mkConst ``Grind.Ring.toSemiring [u]) type ringInst
  let charInst? ← getIsCharInst? u type semiringInst
  let id := (← getArithState).ncRings.size
  let ring : Ring := {
    id, type, u, semiringInst, ringInst, charInst?
  }
  modifyArithState fun s => { s with ncRings := s.ncRings.push ring }
  return some id

/-- Helper function for `tryCommSemiring? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Classify/Variant654e6305bdeedb9dc6d5f924c984e8836d2f356fe72aff6fcdeaa8e760c8f725.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e30a49710605b00fc80f2a0821d41abfdcc7aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
