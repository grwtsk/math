# taylorComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb203459904fb25737fb4906c6a4c938af953a2c1e2084ecc9f7301143e61c2a",
  "kind": "def",
  "lexical_name": "taylorComp",
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
  "slug": "taylorcomp--54fcecc22e2cc00c7ab0e7dc",
  "source": {
    "blob": "633c4dec60f69dbd0b32039b833bf205dd58a07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 900,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54fcecc22e2cc00c7ab0e7dc0cbe5c331a7d71d1b2489b5df3996ebffccf3f2d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb203459904fb25737fb4906c6a4c938af953a2c1e2084ecc9f7301143e61c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–918.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def taylorComp
    (q : FormalMultilinearSeries 𝕜 F G) (p : FormalMultilinearSeries 𝕜 E F) :
    FormalMultilinearSeries 𝕜 E G :=
  fun n ↦ ∑ c : OrderedFinpartition n, q.compAlongOrderedFinpartition p c

/-- An upper estimate (in terms of `Asymptotics.IsBigO`)
on the difference between two compositions of Taylor series.

Let `p₁`, `p₂`, `q₁`, `q₂` be four families of formal multilinear series
depending on a parameter `a`.
Suppose that the norms of `(p₁ · k)`, `(q₁ · k)`, and `(q₂ · k)` are bounded along a filter `l`
for all `k ≤ n`.
Also, suppose that $p₁(a, k) - p₂(a, k) = O(f(a))$, $q₁(a, k) - q₂(a, k) = O(f(a))$
along `l` for all `k ≤ n`.
Then the difference between `n`th terms of `(p₁ a).taylorComp (q₁ a)` and `(p₂ a).taylorComp (q₂ a)`
is `O(f(a))` too.

This lemma can be used, e.g., to show that the composition of two $C^{k+α}$ functions
is a $C^{k+α}$ function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633c4dec60f69dbd0b32039b833bf205dd58a07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
