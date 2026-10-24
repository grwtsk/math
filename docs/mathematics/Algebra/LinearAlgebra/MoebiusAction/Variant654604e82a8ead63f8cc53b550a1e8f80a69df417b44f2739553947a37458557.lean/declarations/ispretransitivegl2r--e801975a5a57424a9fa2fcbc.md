# isPretransitiveGL2R

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df0ba92b6cf9a0da68cca06941ad8e3f69260186dbbecea7d089174640c5f890",
  "kind": "instance",
  "lexical_name": "isPretransitiveGL2R",
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
  "slug": "ispretransitivegl2r--e801975a5a57424a9fa2fcbc",
  "source": {
    "blob": "39588f3c545afbf205e9750dfa3f24170e247b6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 380,
    "path": "GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variant654604e82a8ead63f8cc53b550a1e8f80a69df417b44f2739553947a37458557.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e801975a5a57424a9fa2fcbc8e21ef8a8ad6e79d9846c6ce52d52c14ccb7ef55",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MoebiusAction/Variant654604e82a8ead63f8cc53b550a1e8f80a69df417b44f2739553947a37458557.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df0ba92b6cf9a0da68cca06941ad8e3f69260186dbbecea7d089174640c5f890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isPretransitiveGL2R : MulAction.IsPretransitive (GL (Fin 2) ℝ) ℍ :=
  .of_smul_eq ((↑) : SL(2, ℝ) → _) fun {g z} ↦ (MulAction.compHom_smul_def _ g z).symm

end toSL2R

section J

/-- The matrix `[-1, 0; 0, 1]`, which defines an anti-holomorphic involution of `ℍ` via
`τ ↦ -conj τ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MoebiusAction/Variant654604e82a8ead63f8cc53b550a1e8f80a69df417b44f2739553947a37458557.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variant654604e82a8ead63f8cc53b550a1e8f80a69df417b44f2739553947a37458557.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39588f3c545afbf205e9750dfa3f24170e247b6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
