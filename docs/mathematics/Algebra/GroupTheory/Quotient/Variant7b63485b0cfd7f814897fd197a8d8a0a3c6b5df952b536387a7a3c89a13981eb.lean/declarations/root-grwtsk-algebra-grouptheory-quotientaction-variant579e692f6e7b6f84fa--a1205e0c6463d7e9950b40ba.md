# _root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.MulActionHom.toQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf1f9f4c468468162228bf8d4f7f1583bb07b14c3fdfd20a1311bc60b735252e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.MulActionHom.toQuotient",
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
  "slug": "root-grwtsk-algebra-grouptheory-quotientaction-variant579e692f6e7b6f84fa--a1205e0c6463d7e9950b40ba",
  "source": {
    "blob": "a2a28ccbb664f5e94ddd571ea66f9e8be14ec04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 128,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1205e0c6463d7e9950b40ba61224b982c9e858ac00e8b74b748920d2472a000",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf1f9f4c468468162228bf8d4f7f1583bb07b14c3fdfd20a1311bc60b735252e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.MulActionHom.toQuotient (H : Subgroup G) : G →[G] G ⧸ H where
  toFun := (↑); map_smul' := Quotient.smul_coe H

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant7b63485b0cfd7f814897fd197a8d8a0a3c6b5df952b536387a7a3c89a13981eb.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a28ccbb664f5e94ddd571ea66f9e8be14ec04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
