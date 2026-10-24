# Sign.congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:772e7602bd330e3ad6530eb128e6a2108a3bfd7648c8675ccdfb07c75f6c6ab7",
  "kind": "def",
  "lexical_name": "Sign.congr",
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
  "slug": "sign-congr--3c944d0f4ce4fc2e4747daeb",
  "source": {
    "blob": "62b1d5353ffe220d73c5ae7a065fe43c79a08bb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 506,
    "path": "GRWTSK/Algebra/Lemmas/Variant5a3c058145d8fd3250d30057f7317b28d88eecd7ebbfd09281011ef16522a757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c944d0f4ce4fc2e4747daeb8d0cacd532e16a5ccec655a6ae0eaa39c26bfab5",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variant5a3c058145d8fd3250d30057f7317b28d88eecd7ebbfd09281011ef16522a757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:772e7602bd330e3ad6530eb128e6a2108a3bfd7648c8675ccdfb07c75f6c6ab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Sign.congr {y y' : Q($M)} (g : Sign M) (pf : Q($y = $y')) : Q($(g.expr y)= $(g.expr y')) :=
  match g with
  | .plus => pf
  | .minus _ => q(congr_arg Neg.neg $pf)

/-- If `a` = ± `b`, `b = C * d`, and `d = e`, construct a proof that `a` = `C` * ± `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variant5a3c058145d8fd3250d30057f7317b28d88eecd7ebbfd09281011ef16522a757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variant5a3c058145d8fd3250d30057f7317b28d88eecd7ebbfd09281011ef16522a757.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b1d5353ffe220d73c5ae7a065fe43c79a08bb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
