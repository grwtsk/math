# commutes_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:090a11f8-affe-f77d-d67a-3c26df30aa25",
  "kind": "theorem",
  "lexical_name": "commutes_symm",
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
  "slug": "commutes-symm--d51aaa1b5db06beec3a0df67",
  "source": {
    "blob": "e07cd23ade9056ccbc8a8955fbc422b7a59f93b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d51aaa1b5db06beec3a0df675795a2f0fda41db1b58644c85d6b6abeeda54446",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:090a11f8-affe-f77d-d67a-3c26df30aa25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutes_symm {m : ℕ} (hm : n ≤ m) :
    (zmodEquivTrunc p n).symm.toRingHom.comp (truncate hm) =
      (ZMod.castHom (pow_dvd_pow p hm) _).comp (zmodEquivTrunc p m).symm.toRingHom := by
  ext; apply commutes_symm'

end Iso

end TruncatedWittVector

namespace WittVector

open TruncatedWittVector

variable (p)

/-- `toZModPow` is a family of compatible ring homs. We get this family by composing
`TruncatedWittVector.zmodEquivTrunc` (in right-to-left direction) with `WittVector.truncate`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Compare/Variantcc20e0c648da2bcc27c3bb588f400b152dd59f6b4b8759cb192ea4e58d3c7876.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e07cd23ade9056ccbc8a8955fbc422b7a59f93b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
