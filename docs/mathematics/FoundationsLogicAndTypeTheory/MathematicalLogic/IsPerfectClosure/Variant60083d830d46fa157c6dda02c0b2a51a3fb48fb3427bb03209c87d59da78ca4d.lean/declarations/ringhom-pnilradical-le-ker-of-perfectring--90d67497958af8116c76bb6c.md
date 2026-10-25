# RingHom.pNilradical_le_ker_of_perfectRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4839026-92bd-f645-a0bd-827534d8a250",
  "kind": "theorem",
  "lexical_name": "RingHom.pNilradical_le_ker_of_perfectRing",
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
  "slug": "ringhom-pnilradical-le-ker-of-perfectring--90d67497958af8116c76bb6c",
  "source": {
    "blob": "aee1e920dcf4be19326fb72d198c8bd4e6cc0ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90d67497958af8116c76bb6c5d4992a2938db7fbe9ffd5262d0d7a10b196825a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4839026-92bd-f645-a0bd-827534d8a250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingHom.pNilradical_le_ker_of_perfectRing [ExpChar L p] [PerfectRing L p] :
    pNilradical K p ≤ RingHom.ker i := fun x h ↦ by
  obtain ⟨n, h⟩ := mem_pNilradical.1 h
  replace h := congr((iterateFrobeniusEquiv L p n).symm (i $h))
  rwa [map_pow, ← iterateFrobenius_def, ← iterateFrobeniusEquiv_apply, RingEquiv.symm_apply_apply,
    map_zero, map_zero] at h

variable [ExpChar L p] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee1e920dcf4be19326fb72d198c8bd4e6cc0ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
