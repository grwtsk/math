# Isocrystal.frobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20fe9b01d5c9be7e63bc49f25093d525331418696c4595531f5df5ad5d292a17",
  "kind": "def",
  "lexical_name": "Isocrystal.frobenius",
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
  "slug": "isocrystal-frobenius--3a40d8e93e7f8077ef5a45a4",
  "source": {
    "blob": "c7da4e51559fe33b1a28cf30d1d25bb8b1f312c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a40d8e93e7f8077ef5a45a47b38dafbac0c70afcc83942c957d984738011408",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20fe9b01d5c9be7e63bc49f25093d525331418696c4595531f5df5ad5d292a17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Isocrystal.frobenius : V ≃ᶠˡ[p, k] V :=
  Isocrystal.frob (p := p) (k := k) (V := V)

@[inherit_doc] scoped[Isocrystal] notation "Φ(" p ", " k ")" => WittVector.Isocrystal.frobenius p k

/-- A homomorphism between isocrystals respects the Frobenius map.
Notation `M →ᶠⁱ [p, k]` in the `Isocrystal` namespace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant01fc759d41938f1d47b44a1f669a4725467d858d6d02bee2cd476c0787d4d155.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7da4e51559fe33b1a28cf30d1d25bb8b1f312c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
