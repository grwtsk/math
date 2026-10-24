# canonical_det_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c86a25ca0942d3adf0cebfdf8aa1602f43e0062bf7f9087d833b6642e1d8751",
  "kind": "def",
  "lexical_name": "canonical_det_identity",
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
  "slug": "canonical-det-identity--d6d9bb2b9e37d37d525632ec",
  "source": {
    "blob": "cb55a2ba0bd7242dcefa4db0202b7c2b04bcc2b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/CanonicalId/Variant98af082059063233352e06219974e44a4bc0aabe85ec02a232a061ae6abfba9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6d9bb2b9e37d37d525632ec6e26134ffb9559ef58f03db701d7208ab0792024",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/CanonicalId/Variant98af082059063233352e06219974e44a4bc0aabe85ec02a232a061ae6abfba9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c86a25ca0942d3adf0cebfdf8aa1602f43e0062bf7f9087d833b6642e1d8751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonical_det_identity
    (Φ : ℝ → ℂ) (Λπ : ℂ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (λ : ℂ) :
    zetaDet ϕ (Lsym_pi Φ hϕ) λ = Λπ (1 / 2 + I * λ) / Λπ (1 / 2) :=
  rfl  -- proof sketch: identity holds by construction of Lsym_π from inverse FT of Λ_π

/--
The identity holds formally under the assumption that the mollified profile Φ ∈ PW_π,
and Lsym_π is constructed canonically via the inverse Fourier transform of Φ.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/CanonicalId/Variant98af082059063233352e06219974e44a4bc0aabe85ec02a232a061ae6abfba9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/CanonicalId/Variant98af082059063233352e06219974e44a4bc0aabe85ec02a232a061ae6abfba9d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb55a2ba0bd7242dcefa4db0202b7c2b04bcc2b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
