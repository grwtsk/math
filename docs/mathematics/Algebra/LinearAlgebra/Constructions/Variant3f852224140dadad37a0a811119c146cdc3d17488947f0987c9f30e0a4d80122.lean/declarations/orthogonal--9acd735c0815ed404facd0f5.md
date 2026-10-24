# orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f83706e979f21700ded583bb5fba36f692118f03ea3c83954b46748ed9be4c2",
  "kind": "def",
  "lexical_name": "orthogonal",
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
  "slug": "orthogonal--9acd735c0815ed404facd0f5",
  "source": {
    "blob": "982ad66fb44533d15a5c01fe8e50f282de2e658c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 37,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant3f852224140dadad37a0a811119c146cdc3d17488947f0987c9f30e0a4d80122.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9acd735c0815ed404facd0f597aea93abacd5602accd8b562563225eb9e15bea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variant3f852224140dadad37a0a811119c146cdc3d17488947f0987c9f30e0a4d80122.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f83706e979f21700ded583bb5fba36f692118f03ea3c83954b46748ed9be4c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orthogonal : ℙ F (m → F) → ℙ F (m → F) → Prop :=
  Quotient.lift₂ (fun v w ↦ v.1 ⬝ᵥ w.1 = 0) (fun _ _ _ _ ⟨_, h1⟩ ⟨_, h2⟩ ↦ by
    simp_rw [← h1, ← h2, dotProduct_smul, smul_dotProduct, smul_smul,
      smul_eq_zero_iff_eq])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variant3f852224140dadad37a0a811119c146cdc3d17488947f0987c9f30e0a4d80122.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variant3f852224140dadad37a0a811119c146cdc3d17488947f0987c9f30e0a4d80122.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `982ad66fb44533d15a5c01fe8e50f282de2e658c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
