# Φ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88eff61e5093d540060e93991a41a728ea28fe44035a5dc56206f5f51055c7e6",
  "kind": "def",
  "lexical_name": "Φ",
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
  "slug": "anonymous--c5c92be6874a3eaad0576b6d",
  "source": {
    "blob": "deaf84f035f9a609334ae5561fcb0c233e5ef4be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 365,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5c92be6874a3eaad0576b6d0aee0977db6a8a6a3f1b664becc71bd4a4837708",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88eff61e5093d540060e93991a41a728ea28fe44035a5dc56206f5f51055c7e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def Φ (n : ℤ) : R[X] :=
  X * W.ΨSq n - W.preΨ (n + 1) * W.preΨ (n - 1) * if Even n then 1 else W.Ψ₂Sq

open WeierstrassCurve (Φ)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deaf84f035f9a609334ae5561fcb0c233e5ef4be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
