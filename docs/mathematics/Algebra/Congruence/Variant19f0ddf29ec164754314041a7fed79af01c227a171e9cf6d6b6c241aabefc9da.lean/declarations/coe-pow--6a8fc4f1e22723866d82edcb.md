# coe_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cc0068c-8919-4d8c-794c-6e109a9f9c58",
  "kind": "theorem",
  "lexical_name": "coe_pow",
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
  "slug": "coe-pow--6a8fc4f1e22723866d82edcb",
  "source": {
    "blob": "7ec49b311d491731dc410a1f896317acc8930935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 302,
    "path": "GRWTSK/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a8fc4f1e22723866d82edcb0b0f7af1fb0b082ecd5e22a06a187fedaa671eea",
  "verification": {
    "reference": "docs/verification/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cc0068c-8919-4d8c-794c-6e109a9f9c58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_pow (x : R) (n : ℕ) : (↑(x ^ n) : c.Quotient) = (x : c.Quotient) ^ n :=
  rfl
#align ring_con.coe_pow RingCon.coe_pow

end Pow

section NatCast

variable [AddMonoidWithOne R] [Mul R] (c : RingCon R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Congruence/Variant19f0ddf29ec164754314041a7fed79af01c227a171e9cf6d6b6c241aabefc9da.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ec49b311d491731dc410a1f896317acc8930935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
