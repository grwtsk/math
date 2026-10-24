# instMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57165d329bda34244b726bf00ac7515b39187a89fb50961574eec3a4336a6da4",
  "kind": "instance",
  "lexical_name": "instMonoid",
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
  "slug": "instmonoid--6c3b7aba7715a8432f7ba931",
  "source": {
    "blob": "a2b4195f2049e5020c80587f4ef11d93e1ac9802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 285,
    "path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c3b7aba7715a8432f7ba931b5c2c681b65b9d0b33c113807133864136dce9fc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57165d329bda34244b726bf00ac7515b39187a89fb50961574eec3a4336a6da4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMonoid [Monoid α] : Monoid αᵃᵒᵖ :=
  unop_injective.monoid _ (by exact rfl) (fun _ _ => rfl) fun _ _ => rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Opposite/Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2b4195f2049e5020c80587f4ef11d93e1ac9802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
