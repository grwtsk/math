# Four-distinct centered correlations in Chowla normal form

Issue: #902  
Parent: draft PR #891 at `a3b342558abfa80e2743a1c54e8d4b0dcbacd7e8`.

Choose the first affine argument as common base:
```text
x = c-h+r.
```

The four arguments become
```text
x
x + 2h
x + (ell+h-g)
x + (ell+h+g).
```

The source defines these offsets as
```lean
centeredFourMobiusOffsets
```
and scripts their exact normalization.

On the genuinely nondegenerate stratum, with positive `ell,h,g`, the four offsets are pairwise distinct:
```lean
centeredFourMobiusOffsets_injective.
```

Thus every nondegenerate centered coefficient is canonically a four-distinct translated Möbius product. The source packages the standard datum as
```lean
FourDistinctChowlaDatum
```
and exposes an explicit order-4 finite-support premise
```lean
FourDistinctChowlaFiniteSupportEnvelope.
```

No claim is made that binary Chowla implies this premise.

Status:
```text
FOUR_DISTINCT_CHOWLA_NORMAL_FORM_SOURCE_DRAFT
FOUR_DISTINCT_CHOWLA_ESTIMATE_OPEN
NONSQUAREFREE_SQUARE_DIVISOR_CANCELLATION_OPEN
DIVISOR_SQUARE_RESTRICTED_BINARY_ESTIMATE_OPEN
NOT_RUN
NOT_KERNEL_AUDITED
```
