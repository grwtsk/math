# _root_.GRWTSK.Algebra.IsBezout.Variant037eb494ec3ac045215ad24559121016f217beead714854335800bad7d669ee5.isRelPrime_iff_isCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:198c82b7-8680-8dad-72fe-7f12c0c57bb2",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.IsBezout.Variant037eb494ec3ac045215ad24559121016f217beead714854335800bad7d669ee5.isRelPrime_iff_isCoprime",
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
  "slug": "root-grwtsk-algebra-isbezout-variant037eb494ec3ac045215ad24559121016f217--8e8680636b2f5c08ef55cb42",
  "source": {
    "blob": "d6de315c92879d8c2503b6bc99e92b1e564a7b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 213,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e8680636b2f5c08ef55cb42aae6630e954be8fe17bc53d431464e793d511f81",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:198c82b7-8680-8dad-72fe-7f12c0c57bb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.IsBezout.Variant037eb494ec3ac045215ad24559121016f217beead714854335800bad7d669ee5.isRelPrime_iff_isCoprime : IsRelPrime x y ↔ IsCoprime x y :=
  ⟨IsRelPrime.isCoprime, IsCoprime.isRelPrime⟩

variable (R)

/-- Any Bézout domain is a GCD domain. This is not an instance since `GCDMonoid` contains data,
and this might not be how we would like to construct it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6de315c92879d8c2503b6bc99e92b1e564a7b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
