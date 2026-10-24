# mkSVarCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40d94c4722aca6486029e9dccf5bcf9f1c7c73243edb2c706f76c3725ce55a89",
  "kind": "def",
  "lexical_name": "mkSVarCore",
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
  "slug": "mksvarcore--c259b49655e9a16a31fc9c12",
  "source": {
    "blob": "9abbd8d5614d2cafd977a4525e0267448d061d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 133,
    "path": "GRWTSK/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c259b49655e9a16a31fc9c12774c4a824bb9a140ea2d8d66d293d8c0e33a0648",
  "verification": {
    "reference": "docs/verification/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40d94c4722aca6486029e9dccf5bcf9f1c7c73243edb2c706f76c3725ce55a89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSVarCore [MonadLiftT GoalM m] [Monad m] [MonadSemiring m] [MonadSetTermId m] (e : Expr) : m Var := do
  let s ← getSemiring
  if let some var := s.varMap.find? { expr := e } then
    return var
  let var : Var := s.vars.size
  modifySemiring fun s => { s with
    vars       := s.vars.push e
    varMap     := s.varMap.insert { expr := e } var
  }
  MonadSetTermId.setTermId e
  ringExt.markTerm e
  return var

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SemiringM/Variant1f22423d19bde098d79ac0367216dbd7179a38a7596c5cf29eeef0ad4fa75980.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9abbd8d5614d2cafd977a4525e0267448d061d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
